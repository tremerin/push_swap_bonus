#include "checker.h"

int main(int argc, char**argv)
{
    if (argc > 1)
    {
        int i = 1;
        while (i < argc)
        {
            printf("checker[%d]: %s\n", i, argv[i]);
            i++;
        }
    }
    char    *buffer = NULL;
    while (1)
    {
        if (buffer)
            free(buffer);
        buffer = get_next_line(0);
        if (buffer == NULL)
            break ;
        printf("checker: %s", buffer);
    }
    if (buffer)
        free(buffer);
    return (0);
}