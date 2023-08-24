mlp_prompt () {
    local files_dir="$__REPO_PATH/prompts/"

    if [ ! -d "$files_dir" ]; then
        echo "Error: The $files_dir directory does not exist."
        return 1
    fi

    if [ $# -eq 1 ]; then
        source "$files_dir/$1"
    else
        echo "Usage: mlp_prompt <prompt.sh>"
    fi
}

_mlp_prompt_completion() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local files_dir="$__REPO_PATH/prompts"
    local file_list=$(ls "$files_dir")

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=($(compgen -W "$file_list" -- "$cur"))
  fi
}

complete -F _mlp_prompt_completion mlp_prompt