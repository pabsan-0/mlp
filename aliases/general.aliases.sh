# https://natelandau.com/my-mac-osx-bash_profile/, 2013-07-02.

# alias cp='cp -iv'
# alias cp='mv -iv'
alias mkdir='mkdir -p'

alias ll='ls -lAFh'                              # Preferred 'ls' implementation
alias less='less -FSRXc'                         # Preferred 'less' implementation
alias wget='wget -c'                             # Preferred 'wget' implementation (resume download)
alias c='clear'                                  # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'              # path:         Echo all executable Paths
alias show_options='shopt'                       # Show_options: display bash options settings
alias fix_stty='stty sane'                       # fix_stty:     Restore terminal settings when screwed up
alias fix_term='echo -e "\033c"'                 # fix_term:     Reset the conosle.  Similar to the reset command
alias cic='bind "set completion-ignore-case on"' # cic:          Make tab-completion case-insensitive
alias src='source ~/.bashrc'                     # src:          Reload .bashrc file

alias qfind="find . -name "                 # qfind:    Quickly search for file

#! bash oh-my-bash.module
#  ---------------------------------------------------------------------------

# Directory Listing aliases
alias dir='ls -hFx'
alias l.='ls -d .* --color=tty' # short listing, only hidden files - .*
alias l='ls -lathF'             # long, sort by newest to oldest
alias L='ls -latrhF'            # long, sort by oldest to newest
alias la='ls -Al'               # show hidden files
alias lc='ls -lcr'              # sort by change time
alias lk='ls -lSr'              # sort by size
alias lh='ls -lSrh'             # sort by size human readable
alias lm='ls -al | more'        # pipe through 'more'
alias lo='ls -laSFh'            # sort by size largest to smallest
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lu='ls -lur'              # sort by access time


#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias dud='du -d 1 -h'                      # Short and human-readable directory listing
alias duf='du -sh *'                        # Short and human-readable file listing