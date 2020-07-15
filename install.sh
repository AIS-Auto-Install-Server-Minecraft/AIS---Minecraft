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
  echo -e "\n-> 1.8"
  echo -e "\n-> 1.9"
  echo -e "\n-> 1.9.4"
  echo -e "\n-> 1.10"
  echo -e "\n-> 1.11"
  echo -e "\n-> 1.12"
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

  elif [[ "$CONFIRM" =~ [1.8] ]]; then
  	mkdir /home/Spigot-1.8
    echo "* Downloading Spigot-1.8..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.8/Spigot-1.8.zip /home/Spigot-1.8
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.8.zip
    rm Spigot-1.8.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM" =~ [1.9] ]]; then
  	mkdir /home/Spigot-1.9
    echo "* Downloading Spigot-1.9..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.9/Spigot-1.9.zip /home/Spigot-1.9
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.9.zip
    rm Spigot-1.9.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM" =~ [1.9.4] ]]; then
  	mkdir /home/Spigot-1.9.4
    echo "* Downloading Spigot-1.9.4..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.9.4/Spigot-1.9.4.zip /home/Spigot-1.9.4
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.9.4.zip
    rm Spigot-1.9.4.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM" =~ [1.10] ]]; then
  	mkdir /home/Spigot-1.10
    echo "* Downloading Spigot-1.10..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.10/Spigot-1.10.zip /home/Spigot-1.10
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.10.zip
    rm Spigot-1.10.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM" =~ [1.11] ]]; then
  	mkdir /home/Spigot-1.11
    echo "* Downloading Spigot-1.11..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.11/Spigot-1.11.zip /home/Spigot-1.11
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.11.zip
    rm Spigot-1.11.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM" =~ [1.12] ]]; then
  	mkdir /home/Spigot-1.12
    echo "* Downloading Spigot-1.12..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.12/Spigot-1.12.zip /home/Spigot-1.12
    wget https://cdn.getbukkit.org/spigot/spigot-1.12.jar /home/Spigot-1.12
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.12.zip
    rm Spigot-1.12.zip
    echo "* Done ! Your server is ready !"

  else
    echo "Installation canceled !"
    exit 1
  fi
}

function choose_instance {
  echo -e -n "\n* Which instance do you want to install? Available : "
  echo -e "\n-> Spigot"
  #echo -e "\n-> Thermos"
  #echo -e "\n-> Contigo"
  #echo -e "\n-> BungeeCord"
  #echo -e "\n-> Travertine"
  
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
