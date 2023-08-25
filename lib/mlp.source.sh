mlp_source_many () {
    for file in "$@"; do
        if [ -f "$file" ]; then
            source "$file"
        else
            echo "File not found: $file"
        fi
    done
}


mlp_source_dir () {
    local dir="${1:-.}"

    if [ -d "$dir" ]; then
        for file in "$dir"/*; do
            if [ -f "$file" ] && [[ "$file" =~ \.(sh|bash)$ ]]; then
                source "$file"
            fi
        done
    else
        echo "Directory not found: $dir"
    fi
}