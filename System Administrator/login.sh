#!/bin/bash
echo "Input server id from 1-9. Use the below options as a reference:"
echo "1) App Server 1"
echo "2) App Server 2"
echo "3) App Server 3"
echo "4) Load Balancer Server"
echo "5) Database Server"
echo "6) Storage Server"
echo "7) Backup Server"
echo "8) Mail Server"
echo "9) Jenkins Server"

read -p "Server id: " id

# Get the server details based on the provided server number
case $id in
  1) sshpass -p Ir0nM@n ssh -o StrictHostKeyChecking=no tony@172.16.238.10
    ;;
  2) sshpass -p Am3ric@ ssh -o StrictHostKeyChecking=no steve@172.16.238.11
    ;;
  3) sshpass -p BigGr33n ssh -o StrictHostKeyChecking=no banner@172.16.238.12
    ;;
  4) sshpass -p Mischi3f ssh -o StrictHostKeyChecking=no loki@172.16.238.14
    ;;
  5) sshpass -p Sp!dy ssh -o StrictHostKeyChecking=no peter@172.16.239.10
    ;;
  6) sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15
    ;;
  7) sshpass -p H@wk3y3 ssh -o StrictHostKeyChecking=no clint@172.16.238.16
    ;;
  8) sshpass -p Gr00T123 ssh -o StrictHostKeyChecking=no groot@172.16.238.17
    ;;
  9) sshpass -p j@rv!s ssh -o StrictHostKeyChecking=no jenkins@172.16.238.19
    ;;
  *)
    echo "Invalid server number. Please choose a number between 1 and 9."
    exit 1
    ;;
esac
