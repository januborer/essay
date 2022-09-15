#!/bin/sh
set -e
# sudo rm -rf public
# git clone -b site-code git@github.com:JanU-YieG/JanU-YieG.github.io.git public
# git submodule sync --recursive
# git submodule update --init --recursive
mdbook build
current_branch=$(git branch --show-current)
# Add changes to git.
git pull --rebase --autostash origin $current_branch
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin $current_branch



###############Deploy##############

# If a command fails then the deploy stops set -e 
printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
# hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd book

current_branch=$(git branch --show-current)
# Add changes to git.
git add -f .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin $current_branch
