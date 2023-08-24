# Straightforward
alias tmux='tmux -f $__REPO_PATH/configs/tmux/.tmux.conf'
alias vim='vim -u $__REPO_PATH/configs/vim/.vimrc'
alias code='code --user-data-dir $__REPO_PATH/configs/vscode/.config/Code'




# VSCode requires sharing the whole config dir
function __mls_vscode_clean () {
    # find $__REPO_PATH/configs/vscode/ -type l -delete
    rm -r $__REPO_PATH/configs/vscode/.config/Code/*/!(.gitignore)
    rm -r $__REPO_PATH/configs/vscode/.config/Code/!(.gitignore)
}

function __mls_vscode_setup () {
    shopt -s extglob
    
    # rm -r $__REPO_PATH/configs/vscode/.config/Code/*/!(.gitignore)
    # ln -s  /home/$USER/.config/Code/!(User)    ls $__REPO_PATH/configs/vscode/.config/Code
    # ln -s  /home/$USER/.config/Code/User/*      $__REPO_PATH/configs/vscode/.config/Code/User
    ln -sf $__REPO_PATH/configs/vscode/*.json  $__REPO_PATH/configs/vscode/.config/Code/User

    shopt -u extglob
}
__mls_vscode_setup
