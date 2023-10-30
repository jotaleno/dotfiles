# Dotfiles

Repository to store my configuration dot files.

# Instructions

Make sure to have Python and Ansible installed.

Edit the ansible/hosts.yml file to point to the correct dotfiles Repository local path and host user name.

Run the main.yml ansible playbook to configure linux.

```console
leno@host:~$ git clone git@github.com:jotaleno/dotfiles.git
leno@host:~$ cd dotfiles
leno@host:~$ ansible-playbook -i ansible/hosts.yml ansible/main.yml -K
leno@host:~$ chmod +x themes/install.sh
```
