#downloading dependencies
sudo yum groupinstall -y "Development Tools"
sudo yum install -y gcc openssl-devel bzip2-devel libffi-devel

#Downloading python 3.7.3 tar and installing it
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
tar -xJf Python-3.7.3.tar.xz
cd Python-3.7.3/
./configure
sudo make altinstall #This will add python binary as python3 and will not replace the system python binary
ln -s /usr/local/bin/python3.7 /usr/local/bin/python3 #creating a soflink of python3.7 binary as python3
echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/bin' >> ~/.zshrc

#Installing pip for the user
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user




#Cleaning up setup
cd ..
sudo rm -rf Python*
