#!/bin/bash

echo "* -----"
echo "This script requires escalated privileges."
echo "You will be asked for your password."
echo "* -----"
echo ""

function deps_check {
  # Check for pip and install if necessary
  pip_check=$(pip --version 2> /dev/null)

  if [[ "$pip_check" == "" ]]
  then
    echo "Installing pip."
    sudo easy_install pip
    sudo pip install ansible
  fi
}

function provision {
  echo "Running playbook."
  ansible-playbook -K -i inventory -v main.yml
}

deps_check
provision
