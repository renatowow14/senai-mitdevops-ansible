#!/bin/bash

### Update system
sudo apt update -y

### Install Ansible
sudo apt install -y ansible sshpass

### Ansible - Check installation
ansible --version

### Ansible Playbook - Execute
cd /vagrant/ansible/wordpress
sudo ansible-playbook -i hosts playbook.yml -v