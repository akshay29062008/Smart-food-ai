#!/bin/bash
cd "$(dirname "$0")"
echo "=================================================="
echo "  Pushing Annapurna Platform to GitHub"
echo "  Repo: https://github.com/akshay29062008/smart.foodai"
echo "=================================================="
echo ""

# Ensure git remote is set
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/akshay29062008/smart.foodai.git

# Stage all files, including components, data, views, tests
git add -A

# Commit changes if any
git commit -m "Deploy complete Annapurna platform with data, views, and components" 2>/dev/null || true

echo "Pushing all files and folders to GitHub..."
git push -u origin main --force

echo ""
echo "=================================================="
echo "  Upload completed! Press any key to close."
echo "=================================================="
read -n 1
