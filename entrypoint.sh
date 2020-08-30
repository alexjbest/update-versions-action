#!/bin/sh -l

git reset --hard HEAD
branch_name="lean-$(grep -oP 'lean_version = [\s\S]*lean\:\K[\d.]+(?=\")' leanpkg.toml)"

if [ "$branch_name" != "lean-" ]; then
  echo "Updating mathlib branch $branch_name to match master"
  git push "$1" HEAD:refs/heads/$branch_name
fi
