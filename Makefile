CFILES = JniManager.cpp RouterCpp.cpp TypeConverter.cpp

all: g++ 

clean:
	rm -f -r build/
	rm -f -r output/
	rm -f *.o *.obj *.so* *.dll *.exe *.pdb *.exp *.lib

g++:
	mkdir -p build
	mkdir -p output

	g++ -c -g -I/usr/lib/jvm/java-1.7.0-openjdk-amd64/include -fPIC \
		$(CFILES) 

	mv *.o build/
	
	g++ -o output/JniBridge.so build/JniManager.o build/RouterCpp.o build/TypeConverter.o -shared -fPIC




