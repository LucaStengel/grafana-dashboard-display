# Mein Projekt

This project displays a grafana dashboard in kiosk mode on a raspberry pi 3b+, with raspbian OS 32bit installed.

# Setup

The raspberry is setup by the raspberry imager:
	
	Raspberry PI OS 32Bit
	SSH enabled
	name: pikiosk, pw: pikiosk

Start rasberry and connect via ssh.

Update the raspberry via:

	sudo apt update &&b sudo apt upgrade -y && sudo reboot

Type in terminal:

	nano .config/autostart/browser.desktop

Copy this text in the file and switch the link for the real one:

	[Desktop Entry]
	Type=Application
	Name=Browser Starten
	Exec=/usr/bin/chromium-browser --disable-translate --disable-popup-blocking --kiosk --noerrdialogs --disable-infobars --no-first-run  "https://lucastengel.github.io/website/"
	Terminal=false