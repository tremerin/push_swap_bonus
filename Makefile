NAME        = push_swap
NAME_BONUS  = checker
LIBFT_PATH 	= ./Libft
SRC_DIR     = ./mandatory/
SRC_FILES   = main.c \

BONUS_DIR   = ./bonus/
BONUS_FILES = main.c \

SRC	        = $(addprefix $(SRC_DIR), $(SRC_FILES))
OBJS        = $(addprefix $(SRC_DIR), $(SRC_FILES:.c=.o))
BONUS_SRC   = $(addprefix $(BONUS_DIR), $(BONUS_FILES))
BONUS_OBJS  = $(addprefix $(BONUS_DIR), $(BONUS_FILES:.c=.o))
CC          = gcc
CFLAGS      = -Wall -Werror -Wextra
RM          = rm -f

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	make -C $(LIBFT_PATH)
	$(CC) $(OBJS) $(LIBFT_PATH)/libft.a -o $(NAME)

bonus: $(BONUS_OBJS)
	make -C $(LIBFT_PATH)
	$(CC) $(BONUS_OBJS) $(LIBFT_PATH)/libft.a -o $(NAME_BONUS)

clean:
	make -C $(LIBFT_PATH) clean
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean:
	make -C $(LIBFT_PATH) fclean
	$(RM) $(OBJS) $(BONUS_OBJS) $(NAME) $(NAME_BONUS)

re: fclean all

.PHONY : all bonus clean fclean re