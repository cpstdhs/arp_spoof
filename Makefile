all : pcap_test

pcap_test: main.o
	g++ -g -o arp_spoof arp_spoof.o -lpcap

main.o:
	g++ -g -c -o arp_spoof.o arp_spoof.cpp

clean:
	rm -f arp_spoof
	rm -f *.o

