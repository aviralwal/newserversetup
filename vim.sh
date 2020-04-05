#Installing vim
echo "Installing Vim"
sudo yum remove vim-enchanced vim
sudo yum install -y gcc-c++ ncurses-devel python-devel
git clone https://github.com/vim/vim.git
cd vim
git checkout v8.1.1655
cd src
./configure --with-features=huge \
        --enable-multibyte \
        --enable-pythoninterp=yes \
        --with-python-command=python2 \
        --with-python-config-dir=/usr/lib64/python2.7/config \
        --enable-python3interp=yes \
        --with-python3-config-dir=/usr/local/lib/python3.7/config-3.7m-x86_64-linux-gnu \
        --with-python3-command=python3 \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr/local/bin \
        --enable-fail-if-missing
make
sudo make install

echo "Vim installed. Version :- " 
echo vim --verison

cd ../..
rm -rf vim

# Installing vundle
echo "Removing old vundle instance"
rm -rf ~/.vim/bundle
echo "installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Vundle innstalled. Kindly copy the .vimrc file to the root folder of the user and run the command 'PluginInstall' in vim."
echo "Replacing the old vimrc with the new one"
cp vimrc ~/.vimrc
echo "Installing Vundle packages"
vim +PluginInstall +qall

echo "Compiling YouCompleteMe to use inside vim"
cd ~/.vim/bundle/YouCompleteMe
sudo yum install -y python3-devel cmake
python3 install.py --ts-completer --clang-completer
