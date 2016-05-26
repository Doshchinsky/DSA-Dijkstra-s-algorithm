#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

int main(int argc, char **argv)
{
	if (argc < 2) {
		fprintf(stderr, "Missing file name\n");
		exit(EXIT_FAILURE);
	}

	if (argc < 3) {
		fprintf(stderr, "Missing source node index\n");
		exit(EXIT_FAILURE);
	}

	if (src < 1) {
		fprintf(stderr, "Source node index <%s> must be greater than 0\n", argv[2]);
		exit(EXIT_FAILURE);
	}

	return 0;
}