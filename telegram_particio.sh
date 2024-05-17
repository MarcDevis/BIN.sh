#!/bin/bash

particion=$(df -T -h | grep /dev/sda1 )

/home/mdevisa/BIN/telegram_bot_2.sh "${particion}"