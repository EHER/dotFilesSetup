#dotFiles
Simple Things that makes me Happier @ $HOME

##Dependency (Who Watches the Watchers)
- [Homebrew](http://brew.sh)

##Install
```
brew install ansible
ansible-playbook playbook.yml -v
```

##Docker images (required for php and composer as alias)
Start Docker manually and run docker-images.yml playbook
```
ansible-playbook docker-images.yml -v
```

