# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thallot <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/03 14:51:59 by thallot           #+#    #+#              #
#    Updated: 2019/10/04 13:54:25 by thallot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

############## FLAGS ##################

NAME= libft.a
CC = gcc
LDFLAGS = -Llibft
LDLIBS = -lft
CFLAGS = -Werror -Wall -Wextra

############## FILES ##################

SRC= ft_memset.c \
	 ft_bzero.c \
	 ft_memcpy.c \
	 ft_memccpy.c \
	 ft_memmove.c \
	 ft_memcmp.c \
	 ft_memchr.c \
	 ft_strlen.c \
	 ft_strdup.c \
	 ft_strcpy.c \
	 ft_strncpy.c \
	 ft_strcat.c \
	 ft_strncat.c \
	 ft_strchr.c \
	 ft_strlcat.c \
	 ft_strstr.c \
	 ft_strnstr.c \
	 ft_strrchr.c \
	 ft_strcmp.c \
	 ft_strncmp.c \
	 ft_atoi.c \
	 ft_isalpha.c \
	 ft_isdigit.c \
	 ft_isalnum.c \
	 ft_isascii.c \
	 ft_isprint.c \
	 ft_toupper.c \
	 ft_tolower.c \
	 ft_memalloc.c \
	 ft_memdel.c \
	 ft_strnew.c \
	 ft_strdel.c \
	 ft_strclr.c \
	 ft_striter.c \
	 ft_striteri.c \
	 ft_strmap.c \
	 ft_strmapi.c \
	 ft_strequ.c \
	 ft_strnequ.c \
	 ft_strsub.c \
	 ft_strjoin.c \
	 ft_strndup.c \
	 ft_abs.c \
	 ft_putchar.c \
	 ft_putnbr.c \
	 ft_putnstr.c \
	 ft_itoa.c \
	 ft_putchar_fd.c \
	 ft_putstr_fd.c \
	 ft_putendl_fd.c \
	 ft_putnbr_fd.c \
	 ft_putstr.c \
	 ft_putendl.c \
	 ft_strsplit.c \
	 ft_print_list.c \
	 ft_lstnew.c \
	 ft_lstdelone.c \
	 ft_lstdel.c \
	 ft_lstadd.c \
	 ft_lstiter.c \
	 ft_lstmap.c \
	 ft_sort_integer_table.c \
	 ft_strrev.c \
	 ft_swap.c \
	 ft_recursive_factorial.c \
	 ft_recursive_power.c \
	 ft_sqrt.c \
	 ft_is_prime.c \
	 ft_strmerge.c \
	 get_next_line.c


############## PATH ##################

OBJECTS	= $(SRC:.c=.o)

.PHONY: clean fclean re all

all: $(NAME)

$(NAME): $(OBJECTS)
	@echo "[OK] All $(NAME) objects generated !\r"
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)
	@echo "[OK] Compilation of $(NAME) \n"

%.o: %.c
	@$(CC) $(CFLAGS)  -o $@ -c $< && printf "[OK]Generation of%-50s\r" "$@"

clean:
	@rm -rf $(OBJECTS)

fclean: clean
	@rm -rf $(NAME) $(EXE)
	@echo "$(_GREEN)[OK] $(NAME) deleted"

re: fclean all
	@echo "$(_GREEN)[OK] Succes \n"
