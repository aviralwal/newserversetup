echo "installing epel release and updating system"
sudo yum install -y epel-release
sudo yum update -y

echo "Installing telnet, htop, curl, wget"
sudo yum install -y telnet curl wget

echo "Installing iftop, iotop, htop, ctop"
sudo yum install -y iftop htop iotop
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64  -O /usr/bin/ctop
sudo chmod +x /usr/bin/ctop

echo "Installing the silver searcher"
sudo yum install -y the_silver_searcher
