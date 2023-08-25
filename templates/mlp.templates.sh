
mlp_template () {
    local files_dir="$__REPO_PATH/templates/"
    local target_dir="$PWD/"

    # Check if the /files/ directory exists
    if [ ! -d "$files_dir" ]; then
        echo "Error: The /files/ directory does not exist."
        return 1
    fi

    # Check if any arguments were provided
    if [ $# -eq 0 ]; then
        echo "Usage: mlp_template <file1> [<file2> ...]"
        return 1
    fi

    for arg in "$@"; do
        # Use "compgen" to autocomplete filenames
        local matches=($(compgen -A file "$files_dir/$arg"))

        if [ ${#matches[@]} -eq 0 ]; then
        echo "Error: No matching files found for '$arg' in $files_dir."
        else
        for match in "${matches[@]}"; do
            cp "$match" "$target_dir"
            echo "Copied '$match' to '$target_dir'"
        done
        fi
    done
}

_mlp_template_completion() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local files_dir="$__REPO_PATH/templates"
    local file_list=$(ls "$files_dir")

    COMPREPLY=($(compgen -W "$file_list" -- "$cur"))
}

complete -F _mlp_template_completion mlp_template