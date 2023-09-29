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

# to project
export DATA_FOLDER="$HOME/.dotfiles/data"
export PROJECTS_FILE="$DATA_FOLDER/projects.txt"
alias addtp="echo $(pwd) >> $PROJECTS_FILE; echo 'Done'"
function rmfp {
    option_index=$(cat -n "$PROJECTS_FILE" | fzf --with-nth 2 | awk '{print $1}')
    if [ -z "$option_index" ]; then
        echo "No option selected"
        return
    fi
    new_content=$(sed "${option_index}d" "$PROJECTS_FILE")
    echo "$new_content" > "$PROJECTS_FILE"
}
function pj {
    option=$(cat "$PROJECTS_FILE" | fzf)
    if [ -z "$option" ]; then
        echo "No project selected"
        return
    fi
    tmux neww -c "$option" -n "$option"
}

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# missing: gcloud config and autocomplete
# missing: pnpm stuff
# missing: conda stuff
# missing: bun stuff

# load starship
eval "$(starship init zsh)"
