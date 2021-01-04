
NAME	=	ft_ssl

#################### FLAGS #################
CC		=	clang
CFLAGS	=	-Wall -Wextra -Werror
CPPFLAGS=	-Iinclude
FLAGSFT	=	-L./libft -lft

#################### PATH ##################
SRC_PATH=	src
OBJ_PATH=	obj
OBJ_NAME=	$(SRC_NAME:.c=.o)
SRC		=	$(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ		=	$(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

################## DEPS ####################
DEPS =		Makefile				\
			include/ft_ssl.h		\
			libft/libft.a

################## FILES ###################
SRC_NAME= 	ft_ssl.c						\
			parser.c

################## RULES ###################
all:		LFT $(NAME)

$(NAME):	libft echo $(OBJ)
			@$(CC) $(OBJ) -o $(NAME) $(CPPFLAGS) $(FLAGSFT) $(CFLAGS)
			@echo "\n[OK] Compilation of $(NAME) \n"

echo:
			@echo "Generating $(NAME) :"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c $(DEPS)
			@mkdir -p obj
			@$(CC) -c $< -o $@ $(CFLAGS) $(CPPFLAGS) && printf "[OK] Generation of %s\r" "$@"

clean:
			@echo "Cleaning :"
			@make clean -C ./libft/ --no-print-directory
			@/bin/rm -f $(OBJ)
			@rm -rf $(OBJ_PATH) 2> /dev/null || true

fclean:		clean
			@make fclean -C ./libft/ --no-print-directory
			@/bin/rm -f $(NAME)
			@echo "[OK] $(NAME) deleted \n"

re:			fclean all

LFT:
		@echo "Generating libft :"
		@make -C ./libft/ --no-print-directory

.PHONY:	all clean fclean re echo norm
