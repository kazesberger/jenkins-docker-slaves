#!/bin/bash
set -e

# run init playbook
ansible-playbook -i init/localhost init/init.yml

# run rest of commands as jenkins user
# disabled:
#   because currently mesos plugin does not support this
#   to activate this other option instead of combining commands with && must
#   be programmed in (option like: treat following commands as parameters)
# exec sudo -u jenkins $@
