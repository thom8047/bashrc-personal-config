##
# There should be an `if` checking if we color our terminal
# in most cases, this should be the default, and within this `if`
# you can find where `PS1` is set. This `PS1` variable is what
# defines our command prompt. If the string doesn't make sense
# read more about terminal coloring here: <https://opensource.com/article/19/9/linux-terminal-colors>
#
# You can change the colors and there are RegEx-like variables  
# defining what text is used, such as username, git branch, realm, etc.


# if ${use_color} ; then
# ... Other code

    # I left my initial `PS1` values commented incase I wanted to revert back. This can be helpful for starting over if you mess up
    if [[ ${EUID} == 0 ]] ; then
            #PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \033[01;35m\]\w\033[00m\]\033[01;36m\]$(__git_ps1 " (%s)")\033[00m\]\[\033[01;32m\]]\n$\[\033[00m\] '
            PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
    else
            PS1='\[\033[01;32m\][\u\033[00m\]@\033[01;32m\]\h\[\033[01;37m\] \033[01;35m\]\w\033[00m\]\033[01;36m\]$(__git_ps1 " (%s)")\033[00m\]\[\033[01;32m\]]\n$\[\033[00m\] '
            #PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
    fi


# At the end of the `~/.bashrc` file, you may need to `source` your `git` prompt. It comes by default with `git`
# Note: You will need to find your own `git-prompt.sh` file to appropriately `source` it
source /usr/share/git/git-prompt.sh
