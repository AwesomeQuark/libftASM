# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: conoel <conoel@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/08 21:27:40 by conoel            #+#    #+#              #
#    Updated: 2019/03/23 13:40:27 by conoel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all:
	gcc -c main.c
	~/.brew/bin/nasm -f macho64 -s ft_strcat.s -o ft_strcat.o
	ld ft_strcat.o main.o -macosx_version_min 10.12 -lSystem
