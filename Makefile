NAME		=	ft_ping

CC		=	cc

FLAGS		=	-Wall -Wextra -Werror

RM		=	rm -f

SRCS		=	main.c \

OBJS		=	${SRCS:.c=.o}

.c.o:
		${CC} ${FLAGS} -c $< -o ${<:.c=.o}

all:		${NAME}

${NAME}:	${OBJS}
		${CC} ${TSAN} ${PTHR} ${OBJS} -o ${NAME}
clean:
		${RM} ${OBJS}

fclean:		clean
		${RM} ${NAME}

re:		fclean all

.PHONY:		all clean fclean re
