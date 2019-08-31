#!/bin/bash 
#xinput disable 'Elan Touchpad'
#xinput enable 'Elan Touchpad'
sudo modprobe -r elan_i2c
sudo modprobe elan_i2c
#sudo modprobe -r psmouse
#sudo modprobe psmouse

