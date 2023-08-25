mlp_find_up () {
    local path=$(pwd)

    while [[ "$path" != "" && ! -e "$path/$1" ]]; do
        path=${path%/*}
    done
    echo "$path"
}


mlp_this_file_path () {
    local SOURCE=${BASH_SOURCE[0]}
    local DIR=

    # resolve $SOURCE until the file is no longer a symlink
    while [ -L "$SOURCE" ]; do 
        DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
        SOURCE=$(readlink "$SOURCE")
        # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
        [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE 
    done
    echo $( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
}