#!/usr/bin/env bash
set -euo pipefail
echo "Hello from Semaphore Bash template"
echo "Host: $(hostname)  User: $(id -un)  Bash: ${BASH_VERSION}"
echo "DEMO_MESSAGE=${DEMO_MESSAGE:-<not set>}"
echo "--- Toolchain check ---"
for b in ansible-playbook terraform tofu terragrunt pwsh python3 git; do
  printf '%-18s %s\n' "$b" "$(command -v "$b" || echo MISSING)"
done
