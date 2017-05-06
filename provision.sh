#!/bin/bash

echo "* -----"
echo "This script requires escalated privileges."
echo "You will be asked for your password."
echo "* -----"
echo ""

function xcode_install {
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD";
}

function provision {
  echo "Installing Xcode Command Line Tools"
  xcode_install
  echo "Installing pip."
  sudo easy_install pip
  sudo pip install ansible
  echo "Running playbook."
  ansible-playbook -K -i inventory -v main.yml
}

provision
