NAME = ft_ssl

CFLAGS = -Wall -Werror -Wextra #-g -fsanitize=address
CC = gcc
LIBFT = lib/libft/libft.a

OBJDIR = obj
SRCDIR = src

SC = $(addsuffix .c, ft_ssl reader)

SRCS = $(addprefix $(SRCDIR)/, $(SC))
OBJS = $(addprefix $(OBJDIR)/, $(SC:.c=.o))
INCLS = $(addprefix ./include/, $(addsuffix .h, ft_ssl))

GREEN = \033[01;32m
BLUE = \033[01;34m
_BLUE=$ \x1b[36m
GREY=$ \x1b[33m
RED = \033[01;31m
YELLOW = \033[01;33m
MAGENTA = \033[35m
BLACK = \033[30m
NOCOLOR = \033[0m
WHITE=$ \x1b[37m

BOLD= \033[1m

all: $(NAME)

$(NAME): lib $(OBJS) $(INCLS) Makefile
	@echo " $(BOLD) ~~~~~~~~~~~~~~~ Generation ~~~~~~~~~~~~~~~ "
	@$(CC) $(CFLAGS) $(LIBFTPRINTF) $(LIBFT) $(OBJS) -o $(NAME)
	@echo "$(GREEN) [OK] $(NOCOLOR) Tous les objets de $(NOCOLOR) $(NAME) $(_BLUE) sont generes !\r"
	@echo "$(GREEN) [OK] $(NOCOLOR) Compilation de $(NOCOLOR) $(NAME) \n"

$(OBJDIR)/%.o: $(SRCDIR)/%.c
		@mkdir -p obj
	  @$(CC) $(CFLAGS) -c -o $@ $< && printf "$(GREEN) [OK] $(GREY) Generation de $(NOCOLOR) %-50s\r" "$@" || \
		(echo "$(_RED) [ERREUR] $(_GRAY) Une est erreur est survenue sur $(NOCOLOR) $< $(RED), $(NOCOLOR) $(NAME) $(RED) non compilé(e)\n" && exit 1)

lib: menu_lib $(LIBFT)

menu_lib: FORCE
	@echo "$(BOLD) $(BLUE) ~~~~~~~~~~~~~~~ Library ~~~~~~~~~~~~~~~~~~ "

$(LIBFT): FORCE
	@make -C lib/libft/
	@echo "$(NOCOLOR)"

FORCE:

clean:
	@echo "$(BOLD) $(RED) ~~~~~~~~~~~~ Delete ~~~~~~~~~~~~~~~~"
	@echo "$(GREEN) [OK] $(NOCOLOR) Supression des objets de $(NOCOLOR) $(NAME)"
	@echo "$(GREEN) [OK] $(NOCOLOR) Supression des objets de $(NOCOLOR) libft.a"
	@make clean -C lib/libft
	@rm -f $(OBJS)
	@rm -rf $(OBJDIR)

fclean: clean
	@echo "$(GREEN) [OK] $(RED) Supression de $(NOCOLOR) $(NAME)"
	@make fclean -C lib/libft
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re libft/libft.a menu_lib
