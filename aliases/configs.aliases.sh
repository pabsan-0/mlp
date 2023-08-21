# Straightforward
alias tmux='tmux'
alias vim='vim'
alias code='code'


# VSCode requires sharing the whole thing
function __vscode_setup () {
    ln -s  /home/$USER/.config/Code/User/* $DIR/configs/vscode/.config/Code/User
    ln -sf $DIR/configs/vscode/*           $DIR/configs/vscode/.config/Code/User
}
__vscode_setup