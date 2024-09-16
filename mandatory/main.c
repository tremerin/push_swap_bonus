#include "push_swap.h"

int main(int argc, char **argv)
{
    int     i = 1;
    char    *arguments;
    char    *temp;
    arguments = ft_strdup("");
    while (i < argc)
    {
        temp = ft_strjoin(arguments, argv[i]);
        free(arguments);
        arguments = ft_strjoin(temp, " ");
        free(temp);
        i++;
    }
    char    **values = ft_split(arguments, ' ');
    free(arguments);
    i = 0;
    while (values[i])
    {
        printf("value[%d]: %s\n", i, values[i]);
        i++;
    }
    i = 0;
    while (values[i])
    {
        free(values[i]);
        i++;
    }
    free(values);
    return (0);
}