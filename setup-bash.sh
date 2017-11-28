#!/usr/bin/env bash

rsync \
  --exclude ".git/" \
  --exclude ".misc/" \
  --exclude ".DS_Store" \
  --exclude ".macos" \
  --exclude "install-bash.sh" \
  --exclude "install-xcode.sh" \
  --exclude "install-brew.sh" \
  --exclude "migration.sh" \
  --exclude "setup.sh" \
  --exclude "README.md" \
  -avh --no-perms . ~;

source ~/.bash_profile;
