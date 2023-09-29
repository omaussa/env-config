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
