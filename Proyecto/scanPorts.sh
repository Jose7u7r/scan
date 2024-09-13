#!/bin/bash

 ctrl_c(){
  echo -e "\n\n[!] Saliendo..."
  exit 1

}


#ctrl+c
trap ctrl_c INT 


for port in $(seq 1 65535); do
  (echo ' ' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] $port -OPEN" &
done; wait   
