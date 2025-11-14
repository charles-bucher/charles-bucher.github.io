# Quick Fix: 2 Files Need Updates

## Files with Tommy813-lab References

1. `.github/workflows/github_recruiter_audit.py`
2. `.github/workflows/new-aws-project.sh`

---

## FASTEST FIX (GitHub Web - 2 minutes)

### Fix File 1: github_recruiter_audit.py

1. Go to: https://github.com/charles-bucher/charles-bucher.github.io/blob/main/.github/workflows/github_recruiter_audit.py
2. Click the pencil icon (✏️ Edit)
3. Find these lines (around line 10-11):
   ```python
   python github_recruiter_audit.py --org Tommy813-lab
   python github_recruiter_audit.py --user Tommy813-lab
   ```
4. Change to:
   ```python
   python github_recruiter_audit.py --org charles-bucher
   python github_recruiter_audit.py --user charles-bucher
   ```
5. Scroll down → "Commit changes" → "Commit directly to main"

---

### Fix File 2: new-aws-project.sh

1. Go to: https://github.com/charles-bucher/charles-bucher.github.io/blob/main/.github/workflows/new-aws-project.sh
2. Click the pencil icon (✏️ Edit)
3. Find this line:
   ```bash
   git clone https://github.com/Tommy813-lab/$PROJECT_NAME.git
   ```
4. Change to:
   ```bash
   git clone https://github.com/charles-bucher/$PROJECT_NAME.git
   ```
5. Find this line:
   ```bash
   - GitHub: [github.com/Tommy813-lab](https://github.com/Tommy813-lab)
   ```
6. Change to:
   ```bash
   - GitHub: [github.com/charles-bucher](https://github.com/charles-bucher)
   ```
7. Scroll down → "Commit changes" → "Commit directly to main"

---

## OR Use Command Line (if repo is local)

```bash
cd charles-bucher.github.io

# Fix file 1
nano .github/workflows/github_recruiter_audit.py
# Find and replace Tommy813-lab with charles-bucher
# Save: Ctrl+O, Exit: Ctrl+X

# Fix file 2
nano .github/workflows/new-aws-project.sh
# Find and replace Tommy813-lab with charles-bucher
# Save: Ctrl+O, Exit: Ctrl+X

# Commit
git add .
git commit -m "Fix Tommy813-lab references to charles-bucher"
git push origin main
```

---

## OR Use the Automated Script

Save the bash script, make it executable, and run:
```bash
chmod +x fix-links.sh
./fix-links.sh
```

---

## Why This Is Critical

These are **automation scripts** that will break if they reference the wrong GitHub username. Recruiters might:
- Try to run your audit script → it fails
- Notice the username mismatch → question authenticity
- See sloppy details → pass on your application

**Fix this before any job applications go out.**

---

## Verification (After Fixing)

Search your entire repo:
```bash
# From your repo folder:
grep -r "Tommy813-lab" .
```

If this returns **nothing**, you're clean. ✅

If it shows results, fix those files too.