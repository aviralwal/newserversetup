# Install tmux 2.9a on Centos

# DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
echo "downloading and installing tmux dependencies"
sudo yum install -y gcc kernel-devel make ncurses-devel xsel tree
curl -LOk https://github.com/libevent/libevent/releases/download/release-2.1.10-stable/libevent-2.1.10-stable.tar.gz
tar xf libevent-2.1.10-stable.tar.gz
cd libevent-2.1.10-stable
./configure --prefix=/usr/local
make
sudo make install
cd ..

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
echo "downloading and installing tmux"
curl -LOk https://github.com/tmux/tmux/releases/download/2.9a/tmux-2.9a.tar.gz
tar xf tmux-2.9a.tar.gz
cd tmux-2.9a
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install
cd ..


# open new shell and check tmux version
echo "tmux version"
tmux -V

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "TMUX setup complete. Copy the tmux.conf file to the root folder. Now open a new tmux window and execute 'prefix' + I and 'prefix' + r"

sudo rm -rf tmux-2.9a*

cp tmux.conf ~/.tmux.conf
