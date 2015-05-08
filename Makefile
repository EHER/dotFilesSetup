default: help

fish: _create_fish_link
help: _display_help_message
install: _create_vim_link _create_tmux_link _create_fish_link _install-ansible _run-provision
tmux: _create_tmux_link
vim: _create_vim_link

_create_vim_link:
	@ln -si $(shell pwd)/.vimrc ~/.vimrc

_create_tmux_link:
	@ln -si $(shell pwd)/.tmux.conf ~/.tmux.conf

_create_fish_link:
	@ln -si $(shell pwd)/.config/fish ~/.config

_display_help_message:
	@echo "Avaliables commands:"
	@echo ""
	@echo "  install \t create symlinks to dotFiles and install dependencies"
	@echo "  help \t\t display this message"
	@echo "  fish \t\t create fish symlinks"
	@echo "  tmux \t\t create tmux symlinks"
	@echo "  vim \t\t create vim symlinks"
	@echo ""

_install-ansible:
	pip install ansible --upgrade

_run-provision:
	ansible-playbook ansible/playbook.yml
