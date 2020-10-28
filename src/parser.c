#include "ft_ssl.h"
#include <stdio.h>

int		ft_open(char *file)
{
	int fd;

	fd = open(file, O_RDONLY);
	if (fd > 0)
		return (fd);
	return (0);
}

void    reader(int argc, char **argv)
{
	printf(" ARG : %d \n", argc);
    if (argc >= 1)
    {
        printf("%s", argv[0]);
    }
    else
        ft_putendl("no");
}
