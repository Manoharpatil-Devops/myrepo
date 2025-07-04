echo " Installing ansible"
sudo dnf install -y ansible
ansible --version
echo "Ansible installation completed"
echo " Installing python-pip"
sudo dnf install -y python3-pip
echo "python pip installation completed"
echo "Generating Key"
ssh-keygen
echo "Key Generated"
echo "Please set root user password"
passwd root
echo "Changing the permission of the ssh"
vim /etct/ssh/sshd
