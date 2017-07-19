# sndcld

Requires cURLpp
On debian-like systems (ubuntu, mint...) type the following in a terminal
````
apt install build-essentials git cmake libcurl4-openssl-dev
git clone https://github.com/jpbarrette/curlpp.git
cd curlpp
cmake .
make
sudo make install
sudo ldconfig
cd ..
make
./sndcld
````
