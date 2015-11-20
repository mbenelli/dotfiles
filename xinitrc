#!/bin/sh

/usr/bin/xrdb < $HOME/.Xresources
/usr/bin/setxkbmap dvorak -option ctrl:nocaps  \
                          -option compose:102 \
                          -option terminate:ctrl_alt_bksp
/usr/bin/awesome

