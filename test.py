#! /usr/bin/python3.9
import serial

# Configure the serial port
serial_port = '/dev/ttyUSB0'  # Replace with the actual serial port name
baud_rate = 9600  # Replace with the appropriate baud rate

# Open the serial port
ser = serial.Serial(serial_port, baud_rate)

# Send commands or data to the Arduino
ser.write(b'\x01\x02\x03')

# Read data from the Arduino
response = ser.readline()
print(response)

# Close the serial port
ser.close()
