#include "../include/ft_ssl.h"

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
    int		fd;

    if (argc == 2)
    {
        if ((fd = ft_open(argv[1])) <= 0)
            ft_putendl("error");
        else
        {
            ft_putendl(argv[1]);
        }
    }
    else
        ft_putstr("usage : fillit source_file\n");
}
