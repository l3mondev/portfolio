#!/usr/bin/env bash
set -euo pipefail

# Configurable protected branch (default: main)
PROTECTED_BRANCH="${PROTECTED_BRANCH:-main}"

# If CI is running (GitHub Actions, etc.), skip this hook
if [[ "${CI:-}" == "true" ]]; then
	echo "⚠️  CI detected — skipping local pre-push guard."
	exit 0
fi

# Optional explicit bypass (use with care)
# Example: BYPASS_MAIN_GUARD=1 git push
if [[ "${BYPASS_MAIN_GUARD:-0}" == "1" ]]; then
	echo "⚠️  BYPASS_MAIN_GUARD=1 — skipping push guard for '${PROTECTED_BRANCH}'."
	exit 0
fi

# Read refs from stdin (format: <local_ref> <local_sha> <remote_ref> <remote_sha>)
while read -r local_ref local_sha remote_ref remote_sha; do
	if [[ "$remote_ref" == "refs/heads/${PROTECTED_BRANCH}" ]]; then
		echo "❌ Push to '${PROTECTED_BRANCH}' is blocked by local pre-push guard."
		echo "   Please create a pull request instead:"
		echo "     1) git push origin HEAD"
		echo "     2) Open a PR against '${PROTECTED_BRANCH}' on GitHub"
		exit 1
	fi
done

# All OK
exit 0

