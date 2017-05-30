export PATH=$PATH:~/bin:~/gocode/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

if [ -f ~/.bash/git-completion.bash  ]; then
    . ~/.bash/git-completion.bash
fi

if hash docker 2>/dev/null; then
    alias aws='docker run -it --rm -v $(pwd)/.aws:/root/.aws cgswong/aws aws'
    alias bzt='docker run -it --rm -v $(pwd):/share eher/bzt'
    alias composer='docker run -it --rm --workdir /app -v $(pwd):/app -v ~/.ssh:/root/.ssh -v $(pwd)/.composer:/composer eher/composer'
    alias mysql='docker run -it --rm  mysql mysql'
    alias php='docker run -it --rm -v $(pwd):/app eher/php'
fi

alias git='hub'
alias p='pstorm'
alias s='spotify pause'
alias sn='spotify next'
alias sp='spotify prev'
