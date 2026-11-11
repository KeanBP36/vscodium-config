#!/usr/bin/env bash
set -euo pipefail
U=~/.config/VSCodium/User
R=~/Projects/vscodium-config
case "${1:-}" in
  pull) cp "$U/settings.json" "$U/keybindings.json" "$R/"
        codium --list-extensions > "$R/extensions.txt" ;;
  push) install -m 644 "$R/settings.json" "$R/keybindings.json" "$U/" ;;
  *)    echo "usage: $0 pull|push"; exit 1 ;;
esac
