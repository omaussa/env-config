export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# custom envs config
export PATH=$PATH:/user/local/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/homebrew/bin
export PATH=$PATH:$HOME/homebrew/opt/mysql-client/bin
export PATH=$PATH:$HOME/homebrew/anaconda3/bin
export EDITOR=nvim
export GHA_TOKEN=
export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig
export KUBE_EDITOR=nvim

alias vim=nvim
alias ls="eza -lo --no-permissions"
alias grep=rg
alias top=htop


# notes 
export NOTES_FOLDER="$HOME/workspace/notes"
alias onotes="vim $NOTES_FOLDER"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# missing: gcloud config and autocomplete
# missing: pnpm stuff
# missing: conda stuff
# missing: bun stuff

source $HOME/.dotfiles/scripts/zsh/projects.sh
source $HOME/.dotfiles/scripts/zsh/cat.sh

# load starship
eval "$(starship init zsh)"
