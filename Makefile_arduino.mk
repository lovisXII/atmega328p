BIN=arduino-cli
BOARD=arduino:avr:nano
FILE=MyFirstSketch/MyFirstSketch.ino
PORT=/dev/ttyUSB0

compile:
	$(BIN) compile --fqbn $(BOARD) $(FILE)
upload:
	$(BIN) upload -p $(PORT) --fqbn $(BOARD) $(FILE)
read:
	$(BIN) monitor -p $(PORT)
