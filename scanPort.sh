Discovered open port#!/bin/bash
#Detectar portas abertas nos servidores

clear
echo -n "Qual a rede você deseja escanear? "
read rede
echo -n "Qual a porta aberta desse servidor você deseja descobrir? "
read porta

echo Procurando hosts na rede $rede e porta $porta...

echo .

nmap -sS -vv -p $porta $rede | grep "Discovered open port"



