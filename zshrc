if [[ -a ~/.zsh_profile ]] then
  source ~/.zsh_profile
fi

if [[ -a ~/.zsh_aliases ]] then
  source ~/.zsh_aliases
fi

export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/personalrepos/esp32/esp/xtensa-esp32-elf/bin:$PATH
export PATH=/usr/local/Cellar/elixir/1.4.2/bin:$PATH
export PATH=~/.ellipsis/bin:$PATH
export PATH="/usr/local/opt/erlang@19/bin:$PATH"
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source '/usr/local/Cellar/zsh-syntax-highlighting/0.5.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jdollar/.sdkman"
[[ -s "/Users/jdollar/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jdollar/.sdkman/bin/sdkman-init.sh"

#tmux
if which tmux > /dev/null 2>&1; then
  test -z "$TMUX" && (tmux attach || tmux new-session)
fi

if [[ -a "$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh" ]] then
  source "$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh"
fi

