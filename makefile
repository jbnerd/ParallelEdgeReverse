testcase :
	python3 maketestcase.py ${v} ${e}

run :
	./exe ${t}

compileAll : myRead.o reverse.o
	gcc -g -fopenmp -o exe myRead.o reverse.o

myRead.o : myRead.c myRead.h
	gcc -g -fopenmp -c myRead.c

reverse.o : reverse.c myRead.h
	gcc -g -fopenmp -c reverse.c

clean :
	rm *.o exe

check :
	diff out.txt testcases/answer.data
