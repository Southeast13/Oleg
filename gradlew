#!/usr/bin/env sh
# Lightweight wrapper - prefers system 'gradle' in CI. Kept so build scripts can call ./gradlew.
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
else
  echo "Gradle not found. You can either install Gradle or let Codemagic download it in the pipeline."
  exit 1
fi
