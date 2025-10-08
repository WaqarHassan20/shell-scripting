#!/bin/bash

########################################
# Author : IM SubstituteDoUser
# Date   : 07/10/2025
#
# This script outputs the node's health
#
# Version : v1
########################################

# | Option        | Meaning         | Description                                               |
# | ------------- | --------------- | --------------------------------------------------------- |
# | `-x`          | Debug mode      | Shows each command before executing it.                   |
# | `-e`          | Exit on error   | Stops the script immediately if any command fails.        |
# | `-o pipefail` | Pipeline safety | Makes the whole pipeline fail if any command in it fails. |

set -xeo pipefail

asdfjklzxcvbnmqweruiop | echo "Hello World!"

df -h
# Display the disk spaces : disk free -human readable format

free -g
# Show memory RAM in Gigabytes

nproc
# Number of CPU cores

ps -ef | grep chrome |awk -F "" '{print$4}'