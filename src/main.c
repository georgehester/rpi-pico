#include <stdio.h>
#include <math.h>
#include "pico/stdlib.h"

int
main()
{
    stdio_init_all();

    uint LED_PIN = 25;

    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    uint count = 0;

    while (1)
    {
        gpio_put(LED_PIN, 1);
        sleep_ms(50);
        gpio_put(LED_PIN, 0);
        sleep_ms(50);
        printf("Output: %u\n", count);
        printf("SIZE OF UNIT: %u\n", sizeof(uint));
        printf("MAX UINT: %u\n", UINT32_MAX);
        count++;
        if (count >= pow(2, sizeof(uint) * 8)) count = 0;
    };
};