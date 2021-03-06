/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eblondee <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/28 14:16:43 by eblondee          #+#    #+#             */
/*   Updated: 2022/03/28 15:39:39 by eblondee         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *s, int c, size_t n)
{
	char	*copy;

	copy = s;
	if (s == NULL)
		return (s);
	while (n != 0)
	{
		*copy = c;
		copy++;
		n--;
	}
	return (s);
}
