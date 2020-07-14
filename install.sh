#!/bin/bash
echo "* AIS - Minecraft | Auto server installer"
echo "*"
echo "* Copyright (C) 2020, Arcrow, Arcrow.contact@gmail.com"
echo "* https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft"


function install_dependencies {
  echo "* Installing java..."
  apt-get install default-jre | apt-get install default-jdk
  echo "* Java installed!"

  echo "* Installing tmux..."
  apt-get install tmux
  echo "* Tmux installed!"

  echo "* Installing unzip..."
  apt-get install unzip
  echo "* Unzip installed!"
}

function choose_spigot_version {
  echo -e -n "\n* Which version do you want to install? Available : "
  echo -e "\n-> 1.7.10"
  read -r CONFIRM
  if [[ "$CONFIRM" =~ [1.7.10] ]]; then
  	mkdir /home/Spigot-1.7.10
    echo "* Downloading Spigot-1.7.10..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.7.10/Spigot-1.7.10.zip /home/Spigot-1.7.10
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.7.10.zip
    rm Spigot-1.7.10.zip
    echo "* Done ! Your server is ready !"
  else
    echo "Installation canceled !"
    exit 1
  fi
}

function choose_instance {
  echo -e -n "\n* Which instance do you want to install? Available : "
  echo -e "\n-> Spigot"
  read -r CONFIRM
  if [[ "$CONFIRM" =~ [Spigot] ]]; then
    choose_spigot_version
  else
    echo "Installation canceled !"
    exit 1
  fi
}

function main {
  echo -e -n "\n* Start installation (y/N): "
  read -r CONFIRM
  if [[ "$CONFIRM" =~ [Yy] ]]; then
    install_dependencies
    choose_instance
  else
    echo "Installation canceled !"
    exit 1
  fi
}
main
