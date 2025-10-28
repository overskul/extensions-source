#!/bin/bash
set -e

# Use the GitHub Actions bot identity
git config --global user.name "github-actions[bot]"
git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"

git status
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "Automated update"
    git push
else
    echo "No changes to commit"
fi