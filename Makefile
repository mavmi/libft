SRCS		= 	ft_atoi.c ft_isalpha.c ft_itoa.c ft_memcpy.c ft_putendl_fd.c\
				ft_strchr.c ft_strlcpy.c ft_strnstr.c ft_tolower.c ft_bzero.c\
				ft_isascii.c ft_memccpy.c ft_memmove.c ft_putnbr_fd.c ft_strdup.c\
				ft_strlen.c ft_strrchr.c ft_toupper.c ft_calloc.c ft_isdigit.c\
				ft_memchr.c ft_memset.c ft_putstr_fd.c	ft_strjoin.c ft_strmapi.c\
				ft_strtrim.c ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c\
				ft_split.c ft_strlcat.c ft_strncmp.c ft_substr.c 

OBJS		=	$(SRCS:.c=.o)

SRCS_BONUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
				ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS_BONUS	=	$(SRCS_BONUS:.c=.o)

INCLUDES	=	libft.h

FLAGS		=	-Wall -Wextra -Werror

CC			=	gcc

GCC			=	$(CC) $(FLAGS)

NAME		=	libft.a

all:		$(NAME)

%.o:		%.c $(INCLUDES)
			$(GCC) -c -o $@ $<

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

bonus:		$(OBJS) $(OBJS_BONUS)
			ar rcs $(NAME) $(OBJS) $(OBJS_BONUS)

libft:		$(NAME)

clean:
			rm -f $(OBJS) $(OBJS_BONUS)

fclean:		clean
			rm -f $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean bonus re
