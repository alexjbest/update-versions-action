branch_name="lean-$(grep -oP 'lean_version = \"leanprover-community\/lean\:\K[^\=]+(?=\")' leanpkg.toml)"
echo "Updating mathlib branch $branch_name to match master"
git push "$1" HEAD:refs/heads/$branch_name