# Dockerised Ansible

An automated build of Ansible intended for running Ansible locally
rather than building images from Ansible playbooks.

## Usage

`docker run -it jellybob/ansible --help` will run Ansible with the
`--help` option.

`docker run -v $(pwd):/app -it jellybob/ansible -i ./inventory.ini playbook.yml`
will execute `playbook.yml` from the current directory.

`docker run -v $(pwd):/app -e SSH_AUTH_SOCK=/tmp/ssh-auth-sock --entrypoint=/usr/local/bin/ansible -v $(SSH_AUTH_SOCK):/tmp/ssh-auth-sock -it jellybob/ansible -i ./inventory.ini webservers -a "uname -a"`
will execute `uname -a` on all webserver nodes. (Yup, that's a really ludicrously
long command line).

## Licensing

This Docker repository is released under the same terms as Ansible
itself (GPL 3.0), which as far as I'm aware doesn't have any additional
implications for your software as its just a tool that's being used.
