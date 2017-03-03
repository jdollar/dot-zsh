source ~/.zsh_profile
source ~/.zsh_aliases 

export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/personalrepos/esp32/esp/xtensa-esp32-elf/bin:$PATH
export PATH=/usr/local/Cellar/elixir/1.4.2/bin:$PATH
export PATH=~/.ellipsis/bin:$PATH

source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source '/usr/local/Cellar/zsh-syntax-highlighting/0.5.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jdollar/.sdkman"
[[ -s "/Users/jdollar/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jdollar/.sdkman/bin/sdkman-init.sh"

