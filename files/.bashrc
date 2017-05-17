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

alias composer="docker run -it --rm --workdir /app -v $PWD:/app -v ~/.ssh:/root/.ssh eher/composer"
alias php="docker run -it --rm -v $(pwd):/app eher/php"
alias mysql="docker run -it --rm --workdir /app -v $PWD:/app mysql mysql"

alias sn='spotify next'
alias sp='spotify prev'
alias s='spotify pause'
