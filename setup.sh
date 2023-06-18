sudo apt-get install build-essential
sudo apt-get install raspberrypi-kernel-headers
sudo apt update
sudo apt list --upgradable
sudo apt upgrade
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh
sudo cp bin/arduino-cli /bin/
source /home/$(USER)/.bashrc
arduino-cli core update-index
arduino-cli board list
arduino-cli board listall mkr
arduino-cli core install arduino:samd
arduino-cli core install arduino:avr