#!/bin/ksh

echo $(hostname -I)  $(HOSTNAME) >> /etc/hosts

source /home/ec2-user/bvt9000_64/wtx_9000/setup

/home/ec2-user/bvt9000_64/wtx_9000/bin/launcheradmin.sh -adduser "user:admin;login:admin;pwd:admin;access:gss,gpr,gm"

/home/ec2-user/bvt9000_64/wtx_9000/bin/launcheradmin.sh -firewall enable

/home/ec2-user/bvt9000_64/wtx_9000/bin/launcheradmin.sh -addprop java.rmi.useLocalHostname:false

/home/ec2-user/bvt9000_64/wtx_9000/bin/launcheradmin.sh -addprop java.rmi.server.hostname:10.0.0.11

/home/ec2-user/bvt9000_64/wtx_9000/bin/launcher.sh -start

