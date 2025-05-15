# Mein Projekt

This project displays a grafana dashboard in full display mode on a Raspberry Pi 3b+, with Raspbian OS Lite 32bit installed.

# Setup

The Raspberry is setup by the Raspberry Imager:
	
	Raspberry PI OS Lite, 32Bit
	SSH enabled
	name: pikiosk, pw: pikiosk

Start Rasberry and connect via ssh.

Update the Raspberry via:

	sudo apt update
	
	sudo apt upgrade


Reboot the Raspberry:

	sudo reboot

Connect again via ssh.

Install wtype:

	sudo apt install wtype




Clone the repo into your home folder:



Edit the config file to the dashboard IP address:



start the shell script in the terminal:

./startDisplay.sh
