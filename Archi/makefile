all: nbody.g nbody.i nbody.g1

nbody.g1: nbody.c
	gcc -march=native -mavx2 -Ofast -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g: nbodyPosSQRT.c
	gcc -g -march=native -mavx2 -Ofast -funroll-loops -finline-functions -ftree-vectorize -fno-omit-frame-pointer -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.i: nbodyPosSQRT.c
	icc -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp
		
clean:
	rm -Rf *~ nbody.g nbody.g1 nbody.i *.optrpt

