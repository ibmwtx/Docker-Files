#!/bin/ksh

echo $(hostname -I)  $(HOSTNAME) >> /etc/hosts

source /home/ec2-user/bvt9000_64/wtx_8412/setup

/home/ec2-user/bvt8412_64/wtx_9000/bin/launcher.sh -start

