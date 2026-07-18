################################### PATH ######################################
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin/"

################################## ENV VARS ###################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export PNPM_HOME="/home/pavel/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

################################### INIT ######################################
eval "$(starship init bash)"

. "$HOME/.cargo/env"

################################### ALIAS #####################################
alias ls="eza -lah --icons"
alias lsg="eza -lah --icons -G"
alias grep="rg"
alias cat="batcat"
alias tn="tmux new -s"
alias ta="tmux a -t"
alias myip="curl https://ipinfo.io/ip"
alias terraform="tofu"
