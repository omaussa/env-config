function cat {
    for arg in "$@"
    do
        if [[ $arg == *md ]]; then
            mdcat "$@"
            return
        fi
    done
    /bin/cat "$@"
}
