# Dotfiles

Repository to store my configuration dot files. The automation of the setup is done via Ansible playbooks.

# Instructions

Make sure to have Python and Ansible installed.

Edit the ```ansible/hosts.yml``` file to point to the correct dotfiles repository path and host user name.

Run the main.yml ansible playbook to configure linux.

```console
leno@host:~$ git clone git@github.com:jotaleno/dotfiles.git
leno@host:~$ cd dotfiles
leno@host:~$ ansible-playbook -i ansible/hosts.yml ansible/main.yml -K
leno@host:~$ chmod +x themes/install.sh
```
