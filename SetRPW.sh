#!/bin/bash
#script by อิคคิวซัง

wget -O /etc/ssh/sshd_config 'https://raw.githubusercontent.com/phutthasit2530/OPENTHAI/master/sshd_config'

service ssh restart

