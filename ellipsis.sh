#!/usr/bin/env bash

pkg.link() {
  fs.link_file zshrc
  fs.link_file zsh_profile
  fs.link_file zsh_aliases
}

pkg.pull() {
  git.pull
}

