#!/bin/bash
# inject-syakaisei.sh
# syakaisei.json の内容を ~/.claude/settings.json の companyAnnouncements に挿入する

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ANNOUNCEMENTS_FILE="$SCRIPT_DIR/syakaisei.json"
SETTINGS_FILE="$HOME/.claude/settings.json"

if [[ ! -f "$ANNOUNCEMENTS_FILE" ]]; then
  echo "Error: $ANNOUNCEMENTS_FILE が見つかりません" >&2
  exit 1
fi

if [[ ! -f "$SETTINGS_FILE" ]]; then
  echo "Error: $SETTINGS_FILE が見つかりません" >&2
  exit 1
fi

# jq で companyAnnouncements を上書き挿入
tmp=$(mktemp)
jq --argjson announcements "$(cat "$ANNOUNCEMENTS_FILE")" \
  '.companyAnnouncements = $announcements' \
  "$SETTINGS_FILE" > "$tmp" && mv "$tmp" "$SETTINGS_FILE"

echo "companyAnnouncements を $SETTINGS_FILE に挿入しました（$(jq length "$ANNOUNCEMENTS_FILE") 件）"
