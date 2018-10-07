#!/usr/bin/env bash
#
# jdollar/dot-zsh ellipsis package

CONFIG_DIR="$HOME/.config"
PROFILE_D_DIR="$CONFIG_DIR/zsh_profile.d"
ALIAS_D_DIR="$CONFIG_DIR/zsh_alias.d"
ENV_D_DIR="$CONFIG_DIR/zsh_env.d"

OH_MY_ZSH_URL="https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh"

D_DIRS=( "$PROFILE_D_DIR" "$ALIAS_D_DIR" "$ENV_D_DIR" )

pkg.install() {
  for i in "${D_DIRS[@]}"
  do
    [[ ! -d "$i" ]] && mkdir -p $i
  done
#
#  #install oh-my-zsh
#  [[ ! -d "$HOME/.oh-my-zsh" ]] && sh -c "$(curl -fsSL $OH_MY_ZSH_URL)"
}

pkg.link() {
  case $(os.platform) in
    osx)
      fs.link_files platforms/osx
      ;;
    linux)
      fs.link_files platforms/linux
      ;;
  esac
}

pkg.pull() {
  git.pull
}

