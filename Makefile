# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpieri <cpieri@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/15 11:20:25 by cpieri            #+#    #+#              #
#    Updated: 2019/04/11 16:35:38 by cpieri           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


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
			reader.c




.PHONY:	all clean fclean re echo norm

all:		LFT $(NAME)

$(NAME):	libft echo $(OBJ)
			@$(CC) $(OBJ) -o $(NAME) $(CPPFLAGS) $(FLAGSFT) $(CFLAGS)
			@echo "\n[OK] Compilation of $(NAME) \n"

echo:
			@echo "Generating $(NAME) :"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c $(DEPS)
			@mkdir $(dir $@) 2> /dev/null || true
			@$(CC) -c $< -o $@ $(CFLAGS) $(CPPFLAGS) && printf "[OK]Generation of %-50s\r" "$@"

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
