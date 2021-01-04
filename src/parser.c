#include "ft_ssl.h"

void usage()
{
	ft_putendl("usage");
}

int check_error(t_env *env)
{
	if (ft_strcmp(env->encrypt, "md5") && ft_strcmp(env->encrypt, "sha256"))
		printf("err");
	while (env->nb_flag--)
	{
		if (env->flags[env->nb_flag] != 'p' && env->flags[env->nb_flag] != 'q'
				&& env->flags[env->nb_flag] != 'r' && env->flags[env->nb_flag] != 's')
			printf("err");
	}
	return 0;
}

void    parser(int argc, char **argv, t_env *env)
{
	env->nb_flag = 0;
	env->nb_cmd = 0;
	env->encrypt = argv[1];
	env->cmd = (char**) malloc(sizeof(char*) * argc + 1);
	while (argc-- > 2)
	{
		if (ft_strlen(argv[argc]) == 2 && argv[argc][0] == '-')
			env->flags[env->nb_flag++] = argv[argc][1];
		else
			env->cmd[env->nb_cmd++] = ft_strdup(argv[argc]);
	}

	check_error(env);



	printf("MODE : %s \n ", env->encrypt);
	printf("FLAG : %s \n ", env->flags);
	printf("NB CMD : %d \n ", env->nb_cmd);
	while(env->nb_cmd--)
	{
		printf("CMD : %s \n ", env->cmd[env->nb_cmd]);
	}
}
