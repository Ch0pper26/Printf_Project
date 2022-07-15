# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eblondee <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/29 13:40:34 by eblondee          #+#    #+#              #
#    Updated: 2022/04/19 17:55:14 by eblondee         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_printf.c ft_printf_utils.c ft_printf_utils_bis.c

OBJS = ${SRCS:.c=.o}

NAME = libftprintf.a

CC	= gcc

RM	= rm -rf

INC = ft_printf.h

DIR = ./libft/

LIB = libft.a

CFLAGS	= -Wall -Wextra -Werror -I.${INC}

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
	make -C ${DIR} ${LIB}
	cp ${DIR}${LIB} .
	mv ${LIB} ${NAME}
	ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
	make -C ${DIR} clean
	${RM} ${OBJS}

fclean: clean
	${RM} ${DIR}${LIB}
	${RM} ${NAME}

re:	fclean all

.PHONY: all clean fclean re
