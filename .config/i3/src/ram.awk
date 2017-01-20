#!/usr/bin/awk -f

FNR<17 { v[NR]=$2 } 
END { 
    ram=((v[1]-v[2]-v[4]-v[5])/v[1])*100; 
    swap=((v[15]-v[16])/v[15])*100; 
    printf("RAM %.2f% - SWAP %.2f%\n", ram , swap);  
}

