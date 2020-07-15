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
  echo -e "\n-> 1.13"
  echo -e "\n-> 1.14"
  echo -e "\n-> 1.15"
  echo -e "\n-> 1.16.1"
  read -r CONFIRM3
  if [[ "$CONFIRM3" == "1.7.10" ]]; then
  	mkdir /home/Spigot-1.7.10
    echo "* Downloading Spigot-1.7.10..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.7.10/Spigot-1.7.10.zip /home/Spigot-1.7.10
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.7.10.zip
    rm Spigot-1.7.10.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.8" ]]; then
  	mkdir /home/Spigot-1.8
    echo "* Downloading Spigot-1.8..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.8/Spigot-1.8.zip /home/Spigot-1.8
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.8.zip
    rm Spigot-1.8.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.9" ]]; then
  	mkdir /home/Spigot-1.9
    echo "* Downloading Spigot-1.9..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.9/Spigot-1.9.zip /home/Spigot-1.9
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.9.zip
    rm Spigot-1.9.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.9.4" ]]; then
  	mkdir /home/Spigot-1.9.4
    echo "* Downloading Spigot-1.9.4..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.9.4/Spigot-1.9.4.zip /home/Spigot-1.9.4
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.9.4.zip
    rm Spigot-1.9.4.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.10" ]]; then
  	mkdir /home/Spigot-1.10
    echo "* Downloading Spigot-1.10..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.10/Spigot-1.10.zip /home/Spigot-1.10
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.10.zip
    rm Spigot-1.10.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.11" ]]; then
  	mkdir /home/Spigot-1.11
    echo "* Downloading Spigot-1.11..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.11/Spigot-1.11.zip /home/Spigot-1.11
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.11.zip
    rm Spigot-1.11.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.12" ]]; then
  	mkdir /home/Spigot-1.12
    echo "* Downloading Spigot-1.12..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.12/Spigot-1.12.zip /home/Spigot-1.12
    wget https://cdn.getbukkit.org/spigot/spigot-1.12.jar /home/Spigot-1.12
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.12.zip
    rm Spigot-1.12.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.13" ]]; then
  	mkdir /home/Spigot-1.13
    echo "* Downloading Spigot-1.13..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.13/Spigot-1.13.zip /home/Spigot-1.13
    wget https://cdn.getbukkit.org/spigot/spigot-1.13.jar /home/Spigot-1.13
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.13.zip
    rm Spigot-1.13.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.14" ]]; then
  	mkdir /home/Spigot-1.14
    echo "* Downloading Spigot-1.14..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.4/Spigot-1.14.zip /home/Spigot-1.14
    wget https://cdn.getbukkit.org/spigot/spigot-1.14.jar /home/Spigot-1.14
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.14.zip
    rm Spigot-1.14.zip
    echo "* Done ! Your server is ready !"

  elif [[ "$CONFIRM3" == "1.15" ]]; then
  	mkdir /home/Spigot-1.15
    echo "* Downloading Spigot-1.15..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.15/Spigot-1.15.zip /home/Spigot-1.15
    wget https://cdn.getbukkit.org/spigot/spigot-1.15.jar /home/Spigot-1.15
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.15.zip
    rm Spigot-1.15.zip
    echo "* Done ! Your server is ready !"

   elif [[ "$CONFIRM3" == "1.16.1" ]]; then
  	mkdir /home/Spigot-1.16.1
    echo "* Downloading Spigot-1.16.1..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/1.16.1/Spigot-1.16.1.zip /home/Spigot-1.16.1
    wget https://cdn.getbukkit.org/spigot/spigot-1.16.1.jar /home/Spigot-1.16.1
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Spigot-1.16.1.zip
    rm Spigot-1.16.1.zip
    echo "* Done ! Your server is ready !"

  else
    echo "Installation canceled !"
    exit 1
  fi
}

function contigo {
  	mkdir /home/Contigo
    echo "* Downloading Contigo-1.7.10-1614..."
    wget https://github.com/djoveryde/Contigo/releases/download/1.7.10-r59/Contigo-1.7.10-1614.UNOFFICIAL-server.jar /home/Contigo
    mv /home/Contigo/Contigo-1.7.10-1614.UNOFFICIAL-server.jar /home/Contigo/Contigo-1.7.10-1614.server.jar
    wget https://github.com/djoveryde/Contigo/releases/download/1.7.10-r59/libraries.zip /home/thermos
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/Contigo-Latest/Contigo-1.7.10-1614-config.zip /home/Contigo
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Contigo-1.7.10-1614-config.zip
    rm Contigo-1.7.10-1614-config.zip
    unzip libraries.zip
    rm libraries.zip
    echo "* Done ! Your server is ready !"
}

function thermos {
  	mkdir /home/Thermos
    echo "* Downloading Thermos-1.7.10-1614-57..."
    wget https://yivesmirror.com/files/thermos/Thermos-1.7.10-1614-57.zip /home/Thermos
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/Thermos-Latest/Thermos-1.7.10-1614-57-config.zip /home/Thermos
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Thermos-1.7.10-1614-57-config.zip
    rm Thermos-1.7.10-1614-57-config.zip
    unzip Thermos-1.7.10-1614-57.zip
    rm Thermos-1.7.10-1614-57.zip
    echo "* Done ! Your server is ready !"
}

function choose_travertine_version {
  echo -e -n "\n* Which version do you want to install? Available Travertine version : "
  echo -e "\n-> V153"
  read -r CONFIRM4
  if [[ "$CONFIRM4" == "V153" ]]; then
  	mkdir /home/Travertine-153
    echo "* Downloading Travertine-153..."
    wget https://github.com/AIS-Auto-Install-Server-Minecraft/AIS---Minecraft/raw/Travertine/Travertine-153.zip /home/Travertine-153
    echo "* Download complete!"
    echo "* Server installation..."
    unzip Travertine-153.zip
    rm Travertine-153.zip
    echo "* Done ! Your server is ready !"

  else
    echo "Installation canceled !"
    exit 1
  fi
}
function choose_instance {
  echo -e -n "\n* Which instance do you want to install? Available : "
  echo -e "\n-> Spigot"
  echo -e "\n-> Thermos"
  echo -e "\n-> Contigo"
  echo -e "\n-> Travertine"
  
  read -r CONFIRM2
  if [[ "$CONFIRM2" == "Spigot" ]]; then
    choose_spigot_version

  elif [[ "$CONFIRM2" == "Thermos" ]]; then
    thermos

  elif [[ "$CONFIRM2" == "Contigo" ]]; then
    contigo

  elif [[ "$CONFIRM2" == "Travertine" ]]; then
    choose_travertine_version

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
