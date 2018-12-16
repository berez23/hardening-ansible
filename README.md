# hardening-ansible

## Description
Ansible role for a basic hardening of an ubuntu standard Image. 
Do not use this in a production environment. It's less then alpha, use this https://github.com/dev-sec/ansible-os-hardening for now. 


## Prerequisites
You need to install:
* Vagrant.
* Virtualbox. 

You can use the following howtos to create your environment based on your OS 
* Windows: https://medium.com/@Joachim8675309/virtualbox-and-friends-on-windows-8-1-3c691460698f
* Macos: https://medium.com/@Joachim8675309/virtualbox-and-friends-on-macos-fd0b78c71a32
* Fedora: https://medium.com/@Joachim8675309/vagrant-and-friends-on-fedora-28-37b8cbc47e47


## Testing and running
When your environment is set up just run:

```

$git clone https://github.com/berez23/hardening-ansible.git
$cd hardening-ansible
$vagrant up

```

Hopefully your Ubuntu server should be up and running and ansbile should do the rest.

##  ssh the new Ubuntu server

```
vagrant ssh 
```
