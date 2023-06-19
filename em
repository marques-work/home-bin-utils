#!/bin/bash
# vim: sts=2 sw=2 et

set -euo pipefail

if ! command -v emacsclient &> /dev/null; then
  >&2 printf '\e[31;1m[FATAL] %s\e[0m\n' "You need to install emacs."
  exit 1
fi

case "$(basename "$0")" in
  et)
    exec emacsclient -t "$@"
    ;;
  *)
    exec emacsclient -c "$@"
    ;;
esac
