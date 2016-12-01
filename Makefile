
all: private-tmp.so

private-tmp.so: hpc2n-tmpdir.c
	gcc -std=gnu99 -Wall -o private-tmp.o -fPIC -c hpc2n-tmpdir.c
	gcc -shared -o private-tmp.so private-tmp.o

clean:
	rm -f private-tmp.o private-tmp.so
