#!/bin/bash

mpstat 1 1 | \
awk '/Average/{
    cpu = $3+$5
    printf("%.2f%%\n", cpu)
    printf("%.2f%%\n", cpu)
    if (cpu >= 70) printf("#FF00FF\n") 
    else           printf("#00FFFF\n")
}'

