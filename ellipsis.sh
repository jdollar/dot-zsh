#!/usr/bin/env bash
#
# jdollar/dot-zsh ellipsis package
pkg.install() {
  mkdir -p $HOME/.config/zsh_profile.d
  mkdir -p $HOME/.config/zsh_alias.d
}

pkg.link() {
  case $(os.platform) in
    osx)
      fs.link_files platforms/osx
      ;;
  esac
}

pkg.pull() {
  git.pull
}

