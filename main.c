#include <stdio.h> // printf family
#include <stdlib.h>

int main(int argc, char **argv, char **envp) {
	if (argc != 1)
		return 1;
	(void) argv;
	(void) envp;
	printf("ft_ping\n");
	
	return 0;
}
