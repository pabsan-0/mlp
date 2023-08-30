# Straightforward
source $__MLP_PATH/configs/bash/.bashrc_extra
alias tmux='tmux -f $__MLP_PATH/configs/tmux/.tmux.conf'
alias vim='vim -u $__MLP_PATH/configs/vim/.vimrc'
alias code='code --user-data-dir $__MLP_PATH/configs/vscode/.config/Code'


# VSCode requires sharing the whole config dir
__mlp_vscode_clean () {
    shopt -s extglob
    rm -r $__MLP_PATH/configs/vscode/.config/Code/*/!(.gitignore)
    rm -r $__MLP_PATH/configs/vscode/.config/Code/!(.gitignore)
    shopt -u extglob
}
 
__mlp_vscode_setup () {
    ln -sf $__MLP_PATH/configs/vscode/*.json  $__MLP_PATH/configs/vscode/.config/Code/User 
}
__mlp_vscode_setup
