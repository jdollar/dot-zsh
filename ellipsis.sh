#!/usr/bin/env bash

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

