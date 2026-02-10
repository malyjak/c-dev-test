#include <stdio.h>
#include "greeting.h"

int main(void)
{
    printf("Hello from %s\n", "src/main.c");
    greeting_print_hello();
    return 0;
}
