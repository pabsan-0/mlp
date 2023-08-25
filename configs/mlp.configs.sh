# Straightforward
source $__REPO_PATH/configs/bash/.bashrc_extra
alias tmux='tmux -f $__REPO_PATH/configs/tmux/.tmux.conf'
alias vim='vim -u $__REPO_PATH/configs/vim/.vimrc'
alias code='code --user-data-dir $__REPO_PATH/configs/vscode/.config/Code'


# VSCode requires sharing the whole config dir
function __mlp_vscode_clean () {
    shopt -s extglob

    rm -r $__REPO_PATH/configs/vscode/.config/Code/*/!(.gitignore)
    rm -r $__REPO_PATH/configs/vscode/.config/Code/!(.gitignore)

    shopt -u extglob
}

function __mlp_vscode_setup () {
    shopt -s extglob
    
    ln -sf $__REPO_PATH/configs/vscode/*.json  $__REPO_PATH/configs/vscode/.config/Code/User

    shopt -u extglob
}
__mlp_vscode_setup
