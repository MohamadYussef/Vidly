#!/bin/bash

if [ $1 ];then
    if [ $1 = 'enable' ]; then
        sudo sed -i 's/blacklist uvcvideo/#blacklist uvcvideo/' /etc/modprobe.d/blacklist.conf && echo Camera Enabled please restart
    elif [ $1 = 'disable' ]; then
        sudo sed -i 's/#blacklist uvcvideo/blacklist uvcvideo/' /etc/modprobe.d/blacklist.conf && echo Camera Disabled please restart
    elif [ $1 = 'status' ]; then
        if [ "$(sudo sed -n '/^blacklist uvcvideo/p' /etc/modprobe.d/blacklist.conf)" ]; then
            echo "Disabled"
        else
            echo "Enabled"
        fi
    fi
else
    echo "Provide a parameter (enable/disable/status)"
fi