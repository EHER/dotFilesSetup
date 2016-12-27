export PATH=$PATH:~/gocode/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin

export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

if [ -f ~/.bash/git-completion.bash  ]; then
    . ~/.bash/git-completion.bash
fi

alias composer="docker run -e SOMEENV=SOMEVALUE --rm -v $PWD:/app -v ~/.ssh:/root/.ssh composer/composer"
alias php="docker run -e SOMEENV=SOMEVALUE --rm -v $PWD:/app -w /app php php"
alias sn='spotify next'
alias sp='spotify prev'
alias s='spotify pause'
