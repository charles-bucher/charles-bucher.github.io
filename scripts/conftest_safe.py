# conftest_safe.py
import os
from dotenv import load_dotenv

# Load environment variables from .env
load_dotenv()

# AWS Credentials
AWS_ACCESS_KEY_ID = os.getenv("AWS_ACCESS_KEY_ID")"
AWS_SECRET_ACCESS_KEY = os.getenv("AWS_SECRET_ACCESS_KEY")

# Apply them to os.environ for tests"
os.environ['AWS_ACCESS_KEY_ID'] = AWS_ACCESS_KEY_ID'
os.environ['AWS_SECRET_ACCESS_KEY'] = AWS_SECRET_ACCESS_KEY

# Optional: print to verify (remove in production)'
# print(f"AWS_ACCESS_KEY_ID: {AWS_ACCESS_KEY_ID}")"
# print(f"AWS_SECRET_ACCESS_KEY: {AWS_SECRET_ACCESS_KEY}")
"