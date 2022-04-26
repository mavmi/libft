/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmaryjo <pmaryjo@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/05 18:41:08 by pmaryjo           #+#    #+#             */
/*   Updated: 2021/09/05 18:41:09 by pmaryjo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalpha(int value)
{
	if ((value >= 65 && value <= 90) || (value >= 97 && value <= 122))
	{
		return (1);
	}
	return (0);
}