

############## NAME ##################
NAME	=	ft_ssl

############## FLAGS #################
CC		=	clang
FLAGS	=	-Wall -Wextra -Werror
INC     =	-Iincludes
LIB	    =	-L./libft -LIBFT

############## PATH ##################
SRC_DIR =	src
OBJ_DIR =	obj
OBJ_NAME=	$(SRC_NAME:.c=.o)
SRC		=	$(addprefix $(SRC_DIR)/,$(SRC_NAME))
OBJ		=	$(addprefix $(OBJ_DIR)/,$(OBJ_NAME))

############## DEPENDANCES ###########
DEPS    =	Makefile				\
			include/ft_ssl.h		\
			libft/libft.a

############## FILES ##################
SRC_NAME= 	ft_ssl.c				\
			reader.c

############## PHONY ##################
.PHONY:	all clean fclean re echo norm

############## RULES ##################
all:		LIBFT $(NAME)

$(NAME):	libft echo $(OBJ)
			@$(CC) $(OBJ) -o $(NAME) $(INC) $(LIB) $(FLAGS)
			@echo "\n[OK] Compilation of $(NAME) \n"

echo:
			@echo "Generating $(NAME) :"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(DEPS)
			@mkdir $(dir $@) 2> /dev/null || true
			@$(CC) -c $< -o $@ $(FLAGS) $(INC) && printf "[OK] Generation of %-50s\r" "$@"

clean:
			@echo "Cleaning :"
			@make clean -C ./libft/ --no-print-directory
			@/bin/rm -f $(OBJ)
			@rm -rf $(OBJ_DIR) 2> /dev/null || true

fclean:		clean
			@make fclean -C ./libft/ --no-print-directory
			@/bin/rm -f $(NAME)

re:			fclean all

LIBFT:
		@echo "Generating libft :"
		@make -C ./libft/ --no-print-directory
