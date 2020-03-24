sudo apt-get install automake gcc git libssl-dev libcurl4-openssl-dev 
cd ~
wget http://www.digip.org/jansson/releases/jansson-2.10.tar.gz
tar zxvf jansson-2.10.tar.gz
cd jansson-2.10/
./configure # make
make check
sudo make install
sudo ln -s /usr/local/lib/libjansson.so.4 /usr/lib/libjansson.so.4
sudo ldconfig
