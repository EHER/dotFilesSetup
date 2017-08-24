# dotFiles
Simple Things that makes me Happier @ $HOME


## Dependency (Who Watches the Watchers)
- [Ansible](https://www.ansible.com)


## Install
Just call the main playbook:
```bash
ansible-playbook playbook.yml
```
Tested on MacOS, Debian, Ubuntu and Alpine Linux.


## Docker aliases
Even better then install everything is to run what you need inside a container.

If you have Docker installed it's just create some aliases to avoid long commands:
```bash
alias bzt='docker run -it --rm -v $(pwd):/share eher/bzt'
alias composer='docker run -it --rm --workdir /app -v $(pwd):/app -v $(pwd)/.composer:/composer eher/composer'
alias php='docker run -it --rm -v $(pwd):/app eher/php'
alias wkhtmltoimage='docker run -it --rm -v $(pwd):/tmp/workdir eher/wkhtmltoimage'
alias wkhtmltopdf='docker run -it --rm -v $(pwd):/tmp/workdir eher/wkhtmltopdf'
```

Bare in mind that when you have to read/write files you must map your host machine to container volume.

So the example will work for relative paths, but require some changes if you want to read from /tmp and write on /var/www when you run the command on /home.

You can find more examples on my [.bashrc](https://github.com/EHER/dotFiles/blob/master/files/.bashrc).

The Dockerfiles are [here](https://github.com/EHER/dotFiles/tree/master/docker).


## Try it
You can also just give a try:
```bash
docker run -it --rm eher/dotfiles
```


Enjoy!
