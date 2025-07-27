echo "Installing docker"
yum install docker
echo "Docker installed"
echo "Starting the docker"
systemctl start docker
systemctl status docker
docker version
