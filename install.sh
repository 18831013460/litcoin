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


cd ~ 
git clone https://github.com/LucasJones/cpuminer-multi 
cd cpuminer-multi/ 
./autogen.sh 
./configure CFLAGS="-march=native" 
make 
sudo make install 

nohup minerd -a sha256d  --threads=1  -o  stratum+tcp://ltc.f2pool.com:8888  -u  xiao18831013460.001 -p 123 >ch.log  &
