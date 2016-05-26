INCLUDES = -I src/
dirs = ./bin ./obj
main_obj = ./obj/main.o ./obj/binaryheap.o ./obj/graph.o

all: ./bin/main

./bin/main: $(dirs) $(main_obj)
	gcc $(main_obj) -Wall -o ./bin/main

$(dirs):
	mkdir obj
	mkdir bin

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -Wall -o ./obj/main.o $(INCLUDES)

./obj/binaryheap.o: ./src/binaryheap.c
	gcc -c ./src/binaryheap.c -Wall -o ./obj/binaryheap.o $(INCLUDES)

./obj/graph.o: ./src/graph.c
	gcc -c ./src/graph.c -Wall -o ./obj/graph.o $(INCLUDES)

.PHONY: clean
clean:
	rm -f -r bin/ obj/