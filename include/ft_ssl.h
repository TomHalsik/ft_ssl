#ifndef FT_LS_H
# define FT_LS_H
# include "../libft/libft.h"
# include <string.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <fcntl.h>
# define DIRECTORY 4

/*
******************************** Structures ************************************
*/

/*
******************************** Functions *************************************
*/

void    reader(int argc, char **argv);
unsigned char	*read();

#endif
