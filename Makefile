CXX = g++
CFLAGS = -c -Wall -std=c++11
LFLAGS = -Wall -std=c++11 -lcurl -lcurlpp

all: sndcld


sndcld: sndcld.o json11.o
	$(CXX) sndcld.o json11.o -o sndcld $(LFLAGS)

sndcld.o: sndcld.cpp
	$(CXX) $(CFLAGS) sndcld.cpp

json11.o: json11.cpp
	$(CXX) $(CFLAGS) json11.cpp

clean:
	rm --force *.o sndcld
