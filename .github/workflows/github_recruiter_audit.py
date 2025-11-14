#!/usr/bin/env python3
"""
github_recruiter_audit.py

Usage:
    python github_recruiter_audit.py --org charles-bucher
    python github_recruiter_audit.py --user charles-bucher

Outputs:
 - Console report (pretty)
 - JSON file `recruiter_audit_<org_or_user>.json` with raw scores & metadata
"""

import os
import sys
import time
import argparse
import json
import re
from datetime import datetime, timezone, timedelta

import requests

try:
    from rich import print
    from rich.table import Table
    from rich.console import Console
    console = Console()
except Exception:
    # fall back to basic print if rich not available
    console = None

GITHUB_API = "https://api.github.com"
TOKEN = os.environ.get("GITHUB_TOKEN")  # optional but recommended
HEADERS = {"Authorization": f"token {TOKEN}"} if TOKEN else {}

# -------------------------
# Helpers
# -------------------------
def gh_get(url, params=None):
    headers = HEADERS.copy()
    headers["Accept"] = "application/vnd.github.v3+json"
    resp = requests.get(url, headers=headers, params=params)
    if resp.status_code == 403 and "rate limit" in resp.text.lower():
        reset = resp.headers.get("X-RateLimit-Reset")
        if reset:
            reset_ts = int(reset)
            wait = max(0, reset_ts - int(time.time()))
            raise RuntimeError(f"Rate limited. Retry after {wait} seconds.")
        raise RuntimeError("Rate limited. Provide GITHUB_TOKEN to increase rate limits.")
    resp.raise_for_status()
    return resp.json()

def fetch_repos(user_or_org, is_org=False):
    repos = []
    page = 1
    per_page = 100
    while True:
        if is_org:
            url = f"{GITHUB_API}/orgs/{user_or_org}/repos"
        else:
            url = f"{GITHUB_API}/users/{user_or_org}/repos"
        params = {"per_page": per_page, "page": page, "type": "all", "sort": "updated"}
        data = gh_get(url, params=params)
        if not data:
            break
        repos.extend(data)
        if len(data) < per_page:
            break
        page += 1
    return repos

# minimal safe text length check
def text_score(text):
    if not text:
        return 0
    l = len(text)
    if l < 100: return 10
    if l < 300: return 30
    if l < 800: return 60
    return 90

def readme_badges_score(readme_text):
    if not readme_text: return 0
    score = 0
    # Look for badges: build, coverage, license
    if re.search(r"\[!\[.*build.*\]\(", readme_text, re.I) or "github/actions" in readme_text.lower():
        score += 25
    if re.search(r"coverage", readme_text, re.I):
        score += 20
    if re.search(r"license", readme_text, re.I):
        score += 10
    if re.search(r"(demo|screenshot|gif|video|live)", readme_text, re.I):
        score += 20
    return min(score, 100)

def presence_score(items_found, total_items):
    # simple fraction -> percent
    if total_items == 0: return 0
    return int(100 * items_found / total_items)

def parse_iso8601(dt_str):
    if not dt_str: return None
    try:
        return datetime.fromisoformat(dt_str.replace("Z", "+00:00"))
    except Exception:
        return None

# -------------------------
# Scoring function
# -------------------------
def score_repo(repo):
    """
    repo is the repo JSON from GitHub API list
    We'll fetch README, license, topics, languages, contents of .github/workflows, and tree root filelist (via contents)
    """
    owner = repo["owner"]["login"]
    name = repo["name"]
    full_name = repo["full_name"]
    repo_api = f"{GITHUB_API}/repos/{owner}/{name}"

    result = {
        "name": name,
        "full_name": full_name,
        "html_url": repo["html_url"],
        "private": repo.get("private", False),
        "stars": repo.get("stargazers_count", 0),
        "forks": repo.get("forks_count", 0),
        "open_issues": repo.get("open_issues_count", 0),
        "size_kb": repo.get("size", 0),  # size in KB
        "language": repo.get("language"),
        "updated_at": repo.get("updated_at"),
        "pushed_at": repo.get("pushed_at"),
        "created_at": repo.get("created_at"),
        "topics": [],
        "has_readme": False,
        "readme_text": None,
        "readme_score": 0,
        "has_license": False,
        "has_ci": False,
        "has_tests": False,
        "has_dockerfile": False,
        "has_contributing": False,
        "has_demo": False,
        "has_docs": False,
        "branch_protection": None,
        "score_components": {},
        "final_score": 0,
        "recommendations": []
    }

    # get repo details (topics)
    try:
        repo_detail = gh_get(repo_api)
        # topics require separate Accept maybe but general field may be present
        topics = repo_detail.get("topics") or []
        result["topics"] = topics
    except Exception as e:
        result["recommendations"].append(f"Could not fetch full repo details: {e}")

    # README
    try:
        readme = gh_get(f"{repo_api}/readme")
        # readme content is base64 encoded in 'content' if GET /repos/:owner/:repo/readme
        import base64
        content_b64 = readme.get("content", "")
        text = base64.b64
