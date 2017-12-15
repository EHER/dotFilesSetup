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

alias p='pstorm'
alias s='spotify pause'
alias sn='spotify next'
alias sp='spotify prev'
alias digitalocean='open https://cloud.digitalocean.com'
alias route53='open https://console.aws.amazon.com/route53'
alias datadog='open https://app.datadoghq.com/infrastructure'
alias sql='open ~/sequelpro.sql'
alias logs='open https://logentries.com/app/23011eb6#/dashboard/14593'
alias slack='open https://werkspot.slack.com/'
alias eb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias gif='open https://giphy.com'
alias twitter='open https://twitter.com'
alias ci='open https://ci.werkspot.com'
alias inbox='open https://inbox.google.com/u/0/'

# Nice Greetings
niceThings=(
    'you look lovely today'
    'you are so smart'
    'I think you are fantastic'
    'You are super creative'
    'You can do anything'
    'You write KICKASS code'
    'Your hair looks amazing today'
    'You inspire soooo many people'
    'You are strong powerful'
);

emojis=(
    'ʕᵔᴥᵔʔ'
    '(｡◕‿◕｡)'
    '( ˘ ³˘)♥'
    'ฅ^•ﻌ•^ฅ'
    '(づ￣ ³￣)づ'
    '┌(ㆆ㉨ㆆ)ʃ'
    '“ヽ(´▽｀)ノ”'
    '♥‿♥'
    'ᕕ( ᐛ )ᕗ'
    '(ᵔᴥᵔ)'
)

index=$(( RANDOM % ${#niceThings[@]} ))
echo ${emojis[${index}]} ${niceThings[${index}]}
