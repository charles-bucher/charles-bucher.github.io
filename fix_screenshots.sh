#!/bin/bash
# fix_screenshots.sh
# Generates <img> tags for all screenshots in the screenshots/ folder
# Usage: ./fix_screenshots.sh > screenshots_gallery.html

SCREENSHOT_DIR="screenshots"

echo "<!-- Auto-generated screenshot gallery -->"
for f in "$SCREENSHOT_DIR"/*; do
  filename=$(basename "$f")
  echo "<img src=\"$SCREENSHOT_DIR/$filename\" alt=\"$filename\" style=\"max-width:100%; margin:0.5rem 0; border-radius:8px;\">"
done
