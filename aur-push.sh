#!/usr/bin/env bash

while true; do
  if git push aur master; then
    echo "✅ Push succeeded!"
    break
  else
    echo "❌ Push failed, retrying in 1 second..."
    sleep 1
  fi
done
