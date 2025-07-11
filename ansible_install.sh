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
echo "===Changing the permissions of the sshd===="
cd /etc/ssh/
sed -i '40 s/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' sshd_config
sed -i '65 s/^PasswordAuthentication no/PasswordAuthentication yes/' sshd_config
echo "===Permissions are changed and now restaring the sshd==="
systemctl restart sshd
echo "===Restart is completed===

