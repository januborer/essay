#!/bin/sh
set -e

current_branch=$(git branch --show-current)

git pull --rebase --autostash origin $current_branch
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

git push origin $current_branch
