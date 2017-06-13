#!/usr/bin/env bash

if [[ $(git status -s) ]]; then
    echo "There are changes without saving. Save (commit) them or discard (reset --hard) them before publishing"
    exit 1;
fi

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# We try to download the latest changes made by our workmates
cd public
git reset --hard --quiet 
git clean -f
git fetch origin gh-pages
git rebase origin/gh-pages
if [ $# -ne 0 ]; then
	echo "An error has ocurred. Aborting the process..."
fi 
cd -

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="New Publish [`date +'%d/%m/%Y %H:%M'`]"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin gh-pages

# Come Back
cd ..