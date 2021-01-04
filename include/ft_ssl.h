#ifndef FT_LS_H
# define FT_LS_H
# include "../libft/libft.h"
# include <string.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <stdio.h>
# include <stdlib.h>
# include <fcntl.h>

/*
******************************** Structures ************************************
*/

typedef struct	s_env
{
  int       nb_flag;
  int       nb_cmd;
	char		  flags[5];
	char		  *encrypt;
  char      **cmd;
}               t_env;

/*
******************************** Functions *************************************
*/

void    parser(int argc, char **argv, t_env *env);

#endif
