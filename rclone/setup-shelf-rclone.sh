#!/usr/bin/env bash
set -euo pipefail

ROOT="${SHELF_DRAFT_ROOT:-$HOME/ShelfDrafts}"
RCLONE_BIN="${RCLONE_BIN:-rclone}"

mkdir -p \
  "$ROOT/notes/daily" \
  "$ROOT/notes/global" \
  "$ROOT/sessions/chatgpt" \
  "$ROOT/sessions/codex" \
  "$ROOT/manifests" \
  "$ROOT/home" \
  "$ROOT/vault-index"

echo "Draft root: $ROOT"
echo
echo "Step 1: configure a base Google Drive remote named shelfdrive."
echo "Use your browser to authorize it when rclone asks."
echo
"$RCLONE_BIN" config create shelfdrive drive scope drive.file

echo
echo "Step 2: create an encrypted remote named shelfcrypt."
echo "When asked for passwords, store them in your local vault, not in GitHub."
echo
"$RCLONE_BIN" config create shelfcrypt crypt remote shelfdrive:ShelfDrafts

echo
echo "Done. Test with:"
echo "  $RCLONE_BIN lsd shelfcrypt:"
echo
echo "Draft push example:"
echo "  $RCLONE_BIN copy \"$ROOT/notes\" shelfcrypt:notes --progress"
