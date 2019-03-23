#include <libc.h>

void	ft_strcat(char *str, char *str2);

int		main(void)
{
	char str[9] = "tabouret";
	char str1[9] = "magiique"

	write(1, str, 9);
	ft_strcat(str, str1);
	write(1, str, 9);
	return (0);
}
