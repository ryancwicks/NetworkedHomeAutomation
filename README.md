# Networked Home Automation

The repo contains all the setup files for a networked home automation system based on ESPHome, Node Red and a mix of networked switches and custom firmware.

The MQTT broker and NodeRed server run on a raspberry Pi Zero W (set up with Docker).

## Raspberry Pi Setup

The system has been set up using a Raspberry Pi B+. The Raspberry Pi OS Lite was used as the base. A 7" Waveshare LCD with a capacitive touch screen is used as the main interface.

Start raspi-config, set up the wifi, change the keyboard layout and setup openssh.

I set up the user using this page: 

https://www.raspberrypi.org/documentation/configuration/security.md

I also added a lxde:

https://raspberrytips.com/upgrade-raspbian-lite-to-desktop/

In raspi-config, set the system to autologin the gui.

The final piece to add is an install of Chromium. The current version of Firefox in the apt packages doesn't support kiosk mode.

```
sudo apt install chromium
```

Copy the script run_chrome_kiosk.sh to /home/<user> and set it executable.

Copy the node-mosquitto-service.service file to /etc/systemd/system

Copy the autostart file to ~/.config/lxsession/LXDE

Copy the contents of the nodeRED directory to the ~/docker-compose directory.

Install docker: 

```
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi 
```

Reboot here, and then test docker:

```
docker run hello-world --rm
```

```
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser
```

setup docker compose:

```
sudo pip3 -v install docker-compose 
```

I also installed log2ram to prevent SD card wear:

https://mcuoneclipse.com/2019/04/01/log2ram-extending-sd-card-lifetime-for-raspberry-pi-lorawan-gateway/

Set up the gui to auto login under the system preference.

Set the screensaver to return a black screen after 1 minute.

## Resolution very low

Edit the /boot/config.txt file and ensure the following is set.

max_usb_current=1
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
hdmi_drive=1

## Chrome doesn't work:

For some reason, I was getting an illegal instruction error when I tried to run chromium. Instead I installed Midori and changed the autostart command to 

```
midori -e Fullscreen -a http://google.com
```

## Set up the backlight:

This needs to be done manually. A wire needs to be run from Raspberry pi pin 20 to a SMD pad on the board.

The RPi pin is shown here:

![images/rpi-wire.png][RPi wire location]

The other end of the wire needs to be soldered here:

![images/waveshare-wire.png][Waveshare location]


