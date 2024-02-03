FC = gfortran
FFLAGS = -O2  -fdefault-real-8 -fdefault-double-8 -std=f95
LFLAGS = -lblas -llapack

main.exe : main.o
	$(FC) main.o $(LFLAGS) -o main.exe

main.o : main.f95
	$(FC) $(FFLAGS) -c main.f95

run: main.exe
	./main.exe

clean:
	rm -f *.o main.exe
