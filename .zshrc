if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then 
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

alias code="open -a 'Visual Studio Code'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@13/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@13/include"
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@13/lib"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@13/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@13/lib/pkgconfig"
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

alias vi="nvim"
alias tree1="tree -La 1"
alias t2="tree -La 2"
alias t1="tree -La 1"

# bun completions
[ -s "/Users/ismiabbas/.bun/_bun" ] && source "/Users/ismiabbas/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:~/go/bin

# pnpm
export PNPM_HOME="/Users/ismiabbas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport PATH=/Users/ismiabbas/.rvm/gems/ruby-2.7.4/bin:/Users/ismiabbas/.rvm/gems/ruby-2.7.4@global/bin:/Users/ismiabbas/.rvm/rubies/ruby-2.7.4/bin:/Users/ismiabbas/Library/pnpm:/Users/ismiabbas/.bun/bin:/opt/homebrew/opt/postgresql@13/bin:/opt/homebrew/opt/postgresql@13/bin:/Users/ismiabbas/.nvm/versions/node/v18.14.2/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Library/Apple/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/ismiabbas/.cargo/bin:/Users/ismiabbas/Library/Application Support/JetBrains/Toolbox/scripts:/Users/ismiabbas/Library/Android/sdk/emulator:/Users/ismiabbas/Library/Android/sdk/platform-tools:/Users/ismiabbas/.rvm/bin:/Applications/Docker.app/Contents/Resources/bin/:/Users/ismiabbas/go/bin:/usr/local/bin/

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Mac setup for pomo
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
        
alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
alias ll="ls -la"
alias cr=cargo run
