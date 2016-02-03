###################################################################
# Dockerfile to install ITX Launcher Server container images
# Based on Ubuntu built on amazon ec2 server
# The file can be extended to other ITX installations
##################################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Sunil Dandamudi

# Update the repository sources list
RUN apt-get update
RUN apt-get install ksh

################## BEGIN INSTALLATION ######################
# Install WTX  Following the Instructions at WTX Instruction Docs

RUN mkdir -m 777 -p /home/ec2-user/temp

RUN mkdir -m 777 -p /home/ec2-user/bvt9000_64

RUN mkdir -m 777 -p /home/ec2-user/bvt9000_64/installs

################## EXPORT SILENT INSTALLATION ENV VARIABLES ######################
ENV  VRMFNUM=9000
ENV  BITTYPE=64
ENV  BVTDIR=/home/ec2-user/bvt9000_64
ENV  TXINSTALLS_CORE=wsdtxl
ENV  TXINSTALLS_DK=none
ENV  TXINSTALLS_INTERIMFIX=none
ENV  TXINSTALLS_NOENABLEGPFS=1

################## COPY INSTALLATION ARTIFACTS INCLUDING CREATION OF A WTX USER ######################
COPY wsdtxl_9000_linux_64.tar  /home/ec2-user/bvt9000_64/installs/

ADD install_wtx.sh /home/ec2-user/temp/

ADD adduser_wtx.sh /home/ec2-user/temp/

WORKDIR /home/ec2-user/temp

################## INVOKE THE INSTALL ######################

RUN /bin/ksh /home/ec2-user/temp/adduser_wtx.sh

RUN su wtx /home/ec2-user/temp/install_wtx.sh


################## CLEANUP ######################

RUN rm -rf /home/ec2-user/temp

RUN rm -rf /home/ec2-user/bvt9000_64/installs/wsdtxl_9000_linux_64.tar

RUN rm -rf /home/ec2-user/bvt9000_64/install_*

RUN rm -rf /home/ec2-user/bvt9000_64/tmp

ADD run.sh  /home/ec2-user/

WORKDIR /home/ec2-user/bvt9000_64/wtx_9000

################## START THE LAUNCHER ######################

CMD ["/bin/ksh" , "/home/ec2-user/run.sh" ]
