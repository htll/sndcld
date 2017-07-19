# Requires cURLpp
# On debian-like systems (ubuntu, mint...) type the following in a terminal
#   apt install build-essentials git cmake libcurl4-openssl-dev
#   git clone https://github.com/jpbarrette/curlpp.git
#   cd curlpp
#   cmake .
#   make
#   sudo make install
#   sudo ldconfig
#   cd ..
#   make
#   ./sndcld

CXX=g++
CFLAGS=-c -Wall -std=c++11

all: sndcld


sndcld: sndcld.o json11.o
	$(CXX) -Wall -std=c++11 sndcld.o json11.o -lcurlpp -lcurl -o sndcld

sndcld.o: sndcld.cpp
	$(CXX) $(CFLAGS) sndcld.cpp

json11.o: json11.cpp
	$(CXX) $(CFLAGS) json11.cpp

clean:
	rm *.o sndcld
