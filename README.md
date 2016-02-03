# Docker-Files

The project contains example docker files to create Docker images for launcher. Using the Unix silent installation scripts, we can extend the image creation to all ITX based installs. 

The Pre-req : Install.sh file (https://github.com/ibmwtx/Unix-Installation-Scripts)

Steps to create a docker image : 

   * docker yum install

   * service docker start

   * docker build -t itx/launcherimage

The Dockerfile, install.sh, adduser_wtx.sh and the installation tar file must be present under the same directory
