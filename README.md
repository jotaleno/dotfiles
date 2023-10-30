# Dotfiles

Repository to store my configuration dot files.

# Instructions

Run the main.yml ansible playbook to configure linux (need python and ansible instaled).

```console
leno@host:~$ git clone git@github.com:jotaleno/dotfiles.git
leno@host:~$ cd dotfiles
leno@host:~$ ansible-playbook -i ansible/hosts.yml ansible/main.yml -K
leno@host:~$ chmod +x themes/install.sh
```
