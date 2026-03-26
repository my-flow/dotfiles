#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

git pull origin main

RSYNC_OPTS=(
	--exclude ".git/"
	--exclude ".DS_Store"
	--exclude ".gitignore"
	--exclude "bootstrap.sh"
	--exclude "README.md"
	--exclude "LICENSE-MIT.txt"
	-avh --no-perms
)

case "${1:-}" in
	--force | -f)
		rsync "${RSYNC_OPTS[@]}" . ~
		;;
	--dry-run | -n)
		rsync "${RSYNC_OPTS[@]}" --dry-run . ~
		;;
	*)
		echo "Changes that would be applied:"
		rsync "${RSYNC_OPTS[@]}" --dry-run . ~
		echo ""
		read -rp "Apply these changes? (y/n) " -n 1
		echo ""
		[[ $REPLY =~ ^[Yy]$ ]] && rsync "${RSYNC_OPTS[@]}" . ~
		;;
esac
