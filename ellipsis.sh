#!/usr/bin/env bash
#
# jdollar/dot-zsh ellipsis package

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

