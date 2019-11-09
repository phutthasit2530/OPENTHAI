#!/bin/bash

clear
GROUPNAME=nogroup
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
CHECKSYSTEM=$(tail -n +2 /etc/openvpn/server.conf | grep "^username-as-common-name")
# IP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
# if [[ "$IP" = "" ]]; thenN
IP=$(wget -4qO- "http://whatismyip.akamai.com/")
#
# Color
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'
z1='\e[31;1m'  #red
z2='\e[34;1m'  #blue
z3='\e[32;1m'  #green
z4='\e[35;1m'  #magenta
z5='\e[36;1m'  #cyan
z6='\e[33;1m'  #yellow
z7='\e[0m'
cor[1]="\033[1;36m"
cor[2]="\033[1;33m"
cor[3]="\033[1;31m"
cor[5]="\033[1;32m"
cor[4]="\033[0m"
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'

# ads
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
        chek=$(cat /etc/issue.net)
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
	echo -e "\e[032;1mSYSTEM OS:\e[0m  $chek"
	echo -e "\e[032;1mCPU Model:\e[0m $cname"
	echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem Uptime:\e[0m $up"
	echo "-------------------------------------------------------" 

	echo "-------------------------------------------------------" 
	echo "|||||||||||||||| MyGatherBK-VPN |||||||||||||||||" 
	echo "-------------------------------------------------------"
	echo -e "|${z1} 1${NC}|${BLUE} เพิ่มชื่อผู้ใช้งาน OpenVPN (Config)${NC} "
	echo -e "|${z1} 2${NC}|${BLUE} เพิ่มชื่อผู้ใช้งาน {User/Pass}  SSH (HTTP) VPN (OPENVPN)${NC} "
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		if [[ ! -e /etc/squid3/squid.conf ]]; then
	echo -e "|${z1} 3${NC}|${GREEN} ติดตั้ง SQUID PROXY${NC} ${RED}Install NO${NC} "
		elif [[ -e /etc/squid3/squid.conf ]]; then
	echo -e "|${z1} 3${NC}|${RED} ถอนการติดตั้ง SQUID PROXY${NC} ${GREEN}Install YES${NC} "
		fi

	elif [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
		if [[ ! -e /etc/squid/squid.conf ]]; then
	echo -e "|${z1} 3${NC}|${GREEN} ติดตั้ง SQUID PROXY${NC} ${RED}Install NO${NC} "
		elif [[ -e /etc/squid/squid.conf ]]; then
	echo -e "|${z1} 3${NC}|${RED} ถอนการติดตั้ง SQUID PROXY${NC} ${GREEN}Install YES${NC} "
		fi
	fi
	echo -e "|${z1} 4${NC}| ปิด-เปิดใช้งาน Openvpn เชื่อมได้ไม่จำกัดเครื่อง  "
	echo -e "|${z1} 5${NC}| เปิด-ปิด-รีสตาร์ท การทำงานของระบบ "
	echo -e "|${z1} 6${NC}|${BLUE} ตรวจสอบบัญชีผู้ใช้ SSH ทั้งหมด ${NC} "
	echo -e "|${z1} 7${NC}| Delete บัญชีผู้ใช้ SSH "
	echo -e "|${z1} 8${NC}|${cor[3]} Delete บัญชีผู้ใช้ OPENVPN ${NC} "
	echo -e "|${z1} 9${NC}|${cor[3]} User Root TO Pass เปลื่ยนรหัสผ่านเซิฟร์เวอร์ ${NC} "
	echo -e "|${z1}10${NC}| ตั้งค่าเวลารีบูทเซิฟเวอร์อัตโนมัติ  "
	echo -e "|${z1}11${NC}|${YELLOW} ตรวจสอบแบนด์วิดท์ต่อบัญชี ${NC} "
	echo -e "|${z1}12${NC}|${z5} เปลี่ยนรหัสผ่านบัญชีผู้ใช้ ${NC} "
	echo -e "|${z1}13${NC}|${z2} เปลี่ยนวันหมดอายุบัญชีผู้ใช้ ${NC} "
	echo -e "|${z1}14${NC}| เช็ดการใช้งานแบนวิท " 
	echo -e "|${z1}15${NC}| ปรับความเร็วอินเตอร์เน็ต  "
	echo -e "|${z1}16${NC}|${z2} แบนและปลดแบนบัญชีผู้ใช้ {User/Pass} ${NC} "
	echo -e "|${z1}17${NC}|${RED} REMOVE OPENVPN SCRIPT ${NC} ${GREEN} ✔ ${NC} "
	echo -e "|${z1}18${NC}|${GREEN} ตรวจสอบแบนด์วิดท์แบบรายชั่วโมง ${NC} ${GREEN} ✔ ${NC} "
	echo -e "|${z1}19${NC}| ${CYAN}MENU ไฟล์สคริปท์ของเมนู ${NC} "
	echo -e "|${z1}20${NC}| ${CYAN}Update Credits Bannerssh ${NC} "
	echo -e "|${z1}21${NC}| ${CYAN}SHOW_PORTS ${NC} "
	echo -e "|${z1}22${NC}| ${CYAN}EDIT_PORT OPENVPN ${NC} "
        echo -e "|${z1}23${NC}| ( ${CYAN}จัดการตั้งค่าพร็อกซี่ ${NC}) "
	echo -e "|${z1}24${NC}| ${CYAN}EDIT_SQUID3 & EDIT_SQUID ${NC} "
	echo -e "|${z1}25${NC}| ${CYAN}EDIT_PORTSSH ${NC} "
	echo -e "|${z1}26${NC}| ${GRAY}EDIT_Config Openvpn  ${NC} "
	echo -e "|${z1}27${NC}| ${GREEN}Install_Dropbear  ${NC} "
	echo -e "|${z1}28${NC}| ${CYAN}EDIT_Dropbear  ${NC} "
	echo -e "|${z1}29${NC}| Restart Openvpn  ${NC} "
	echo -e "|${z1}30${NC}| ตรวจสอบ TIME LOGIN  ${NC} "
	echo -e "|${z1}31${NC}|${GREEN} Reboot SERVER VPS  ${NC} "
        echo -e "|00|${cor[2]} Update MENU SCRIPT ${NC} ${GREEN} ✔ ${NC} "
	echo ""
	echo -e "${BLUE}>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<< ${NC}"
	# vnstat meter
if [[ -e /etc/vnstat.conf ]]; then
	INTERFACE=`vnstat -m | head -n2 | awk '{print $1}'`
	TOTALBW=$(vnstat -i $INTERFACE --nick local | grep "total:" | awk '{print $8" "substr ($9, 1, 1)}')
fi

ON=0
OFF=0
while read ONOFF
do
	ACCOUNT="$(echo $ONOFF | cut -d: -f1)"
	ID="$(echo $ONOFF | grep -v nobody | cut -d: -f3)"
	ONLINE="$(cat /etc/openvpn/openvpn-status.log | grep -Eom 1 $ACCOUNT | grep -Eom 1 $ACCOUNT)"
	if [[ $ID -ge 1000 ]]; then
		if [[ -z $ONLINE ]]; then
			OFF=$((OFF+1))
		else
			ON=$((ON+1))
		fi
		fi
done < /etc/passwd
bash Auto-Delete-Client
echo ""
echo -e "TOTAL BANDWIDTH ${CYAN}$TOTALBW${NC}${CYAN}B${NC}"
echo -e "CLIENT ONLINE NOW ${GREEN}$ON${NC} CLIENT "
echo -e "${BLUE}>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<< ${NC}"
echo ""
echo "[][][]======================================[][][]"
echo "[][][]    Update menu Script 06/10/2019     [][][]"
echo "[][][]======================================[][][]"
echo ""
        read -p "เลือกหัวข้อเมนูที่ต้องการใช้งาน : " MENU
echo ""
case $MENU in
1) # ==================================================================================================================
	
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
if [[ $CHECKSYSTEM ]]; then
	echo ""
	read -p "ชื่อบัญชีที่ต้องการสร้าง : " -e CLIENT

	if [ $? -eq 0 ]; then
		read -p "รหัสผ่าน : " -e PASSWORD
		echo ""
		echo -e " ระบุตัวเลข 30 จะทำให้บัญชีที่สร้างใช้งานไม่ได้ในอีก 30 วัน "
		read -p "กำหนดวันหมดอายุ : " -e TimeActive

		PROXY=$(grep '^http_port ' /etc/squid/squid.conf | cut -d " " -f 2)
		PROXY=$(grep '^http_port ' /etc/squid3/squid.conf | cut -d " " -f 2)
		useradd -e `date -d "$TimeActive days" +"%Y-%m-%d"` -s /bin/false -M $CLIENT
		EXP="$(chage -l $CLIENT | grep "Account expires" | awk -F": " '{print $2}')"
		echo -e "$PASSWORD\n$PASSWORD\n"|passwd $CLIENT &> /dev/null

		clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		echo "ชื่อบัญชี : $CLIENT"
		echo "รหัสผ่าน : $PASSWORD"
		echo "หมดอายุในวันที่ : $EXP"
		echo ""
		echo "IP : $IP"
		echo "Port : 22"
		echo "Proxy Port : $PROXY"
		exit
	else
		echo ""
		echo "ชื่อบัญชีที่ระบุอยู่ในระบบแล้ว"
		echo ""
		read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

		if [[ "$TOMENU" = 'Y' ]]; then
			m
			exit
		elif [[ "$TOMENU" = 'N' ]]; then
			exit
		fi
	fi

else

	echo ""
	read -p "ชื่อบัญชีที่ต้องการสร้าง : " -e CLIENT

	if [[ -e /etc/openvpn/easy-rsa/pki/private/$CLIENT.key ]]; then
		echo ""
		echo "ชื่อบัญชีที่ระบุอยู่ในระบบแล้ว"
		echo ""
		read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

		if [[ "$TOMENU" = 'Y' ]]; then
			menu
			exit
		elif [[ "$TOMENU" = 'N' ]]; then
			exit
		fi
	fi

	echo ""
	echo -e " ะบุตัวเลข 30 จะทำให้บัญชีที่สร้างใช้งานไม่ได้ในอีก 30 วัน "
	read -p "กำหนดวันหมดอายุ : " -e TimeActive

newclient () {
	# Generates the custom client.ovpn
	cp /etc/openvpn/client-common.txt ~/$1.ovpn
	echo "<ca>" >> ~/$1.ovpn
	cat /etc/openvpn/easy-rsa/pki/ca.crt >> ~/$1.ovpn
	echo "</ca>" >> ~/$1.ovpn
	echo "<cert>" >> ~/$1.ovpn
	sed -ne '/BEGIN CERTIFICATE/,$ p' /etc/openvpn/easy-rsa/pki/issued/$1.crt >> ~/$1.ovpn
	echo "</cert>" >> ~/$1.ovpn
	echo "<key>" >> ~/$1.ovpn
	cat /etc/openvpn/easy-rsa/pki/private/$1.key >> ~/$1.ovpn
	echo "</key>" >> ~/$1.ovpn
	echo "<tls-auth>" >> ~/$1.ovpn
	sed -ne '/BEGIN OpenVPN Static key/,$ p' /etc/openvpn/ta.key >> ~/$1.ovpn
	echo "</tls-auth>" >> ~/$1.ovpn
}

	RANDOMFOLDER=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 4 | head -n 1)
	mkdir /home/vps/public_html/$RANDOMFOLDER
	cd /etc/openvpn/easy-rsa/
	./easyrsa build-client-full $CLIENT nopass
	newclient "$CLIENT"
	cp /root/$CLIENT.ovpn /home/vps/public_html/$RANDOMFOLDER/$CLIENT.ovpn
	rm -f /root/$CLIENT.ovpn
	useradd -e `date -d "$TimeActive days" +"%Y-%m-%d"` -s /bin/false -M $CLIENT
	EXP="$(chage -l $CLIENT | grep "Account expires" | awk -F": " '{print $2}')"
	echo -e "$CLIENT\n$CLIENT\n"|passwd $CLIENT &> /dev/null

	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "ชื่อบัญชี : $CLIENT"
	echo "หมดอายุในวันที่ : $EXP"
	echo ""
	echo "ดาวน์โหลดคอนฟิก : http://$IP:85/$RANDOMFOLDER/$CLIENT.ovpn "
	echo ""
	exit

fi

	;;

2) # ==================================================================================================================

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	read -p "ชื่อบัญชีที่ต้องการสร้าง : " -e CLIENT

	if [ $? -eq 0 ]; then
		read -p "รหัสผ่าน : " -e PASSWORD
		echo ""
		echo -e "     ${GRAY}ระบุตัวเลข 30 จะทำให้บัญชีที่สร้างใช้งานไม่ได้ในอีก 30 วัน${NC}"
		read -p "กำหนดวันหมดอายุ : " -e TimeActive

		PROXY=$(grep '^http_port ' /etc/squid/squid.conf | cut -d " " -f 2)
		PROXY=$(grep '^http_port ' /etc/squid3/squid.conf | cut -d " " -f 2)
		useradd -e `date -d "$TimeActive days" +"%Y-%m-%d"` -s /bin/false -M $CLIENT
		EXP="$(chage -l $CLIENT | grep "Account expires" | awk -F": " '{print $2}')"
		echo -e "$PASSWORD\n$PASSWORD\n"|passwd $CLIENT &> /dev/null

		clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		echo "ชื่อบัญชี        : $CLIENT"
		echo "รหัสผ่าน        : $PASSWORD"
		echo "หมดอายุในวันที่   : $EXP "
		echo "IP            : $IP"
		echo "Port OpenSSH  : 22,143 "
		echo "Port Dropbear : 80,109,110 "
		echo "Port SSL      : 442 "
		echo "Proxy Port    : 8080 "
		exit
	else
		echo ""
		echo "ชื่อบัญชีที่ระบุอยู่ในระบบแล้ว"
		echo ""
		read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

		if [[ "$TOMENU" = 'Y' ]]; then
			m
			exit
		elif [[ "$TOMENU" = 'N' ]]; then
			exit
		fi
	fi

	;;

3) # =================================================================================================================
	
if [[ -e /etc/squid3/squid.conf ]]; then
	apt-get -y remove --purge squid3
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "Squid Proxy .....Removed."
	exit
elif [[ -e /etc/squid/squid.conf ]]; then
	apt-get -y remove --purge squid
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "Squid Proxy .....Removed."
	exit
fi

read -p "Port Proxy : " -e -i 8080 PROXY

if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
	apt-get -y install squid3
	cat > /etc/squid3/squid.conf <<END
http_port $PROXY
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl localnet src 10.0.0.0/8
acl localnet src 172.16.0.0/12
acl localnet src 192.168.0.0/16
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/255.255.255.255
http_access allow SSH
http_access allow localnet
http_access allow localhost
http_access deny all
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
END
	IP2="s/xxxxxxxxx/$IP/g";
	sed -i $IP2 /etc/squid3/squid.conf;
	if [[ "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		service squid3 restart
	else
		/etc/init.d/squid3 restart
	fi
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "Squid Proxy .....Install finish."
	echo "IP Proxy : $IP"
	echo "Port Proxy : $PROXY"
	echo ""
	exit

elif [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
	apt-get -y install squid
	cat > /etc/squid/squid.conf <<END
http_port $PROXY
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl localnet src 10.0.0.0/8
acl localnet src 172.16.0.0/12
acl localnet src 192.168.0.0/16
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/255.255.255.255
http_access allow SSH
http_access allow localnet
http_access allow localhost
http_access deny all
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
END
	IP2="s/xxxxxxxxx/$IP/g";
	sed -i $IP2 /etc/squid/squid.conf;
	/etc/init.d/squid restart
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "Squid Proxy .....Install finish."
	echo "IP Proxy : $IP"
	echo "Port Proxy : $PROXY"
	echo ""
	exit

fi

	;;


4) # ==================================================================================================================

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo " ปรับเปลี่ยนระบบของเซิฟเวอร์ "
echo ""
echo "|1| 1 ไฟล์เชื่อมต่อได้ 1 เครื่องเท่านั้น สามารถสร้างไฟล์เพิ่มได้ "
echo "|2| 1 ไฟล์เชื่อมต่อได้หลายเครื่อง แต่ต้องสร้างบัญชีเพื่อใช้เชื่อมต่อ "
echo "|3| 1 ไฟล์เชื่อมต่อได้ไม่จำกัดเครื่อง "
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " CHANGESYSTEMSERVER

case $CHANGESYSTEMSERVER in

	1)

sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '20d' /etc/openvpn/client-common.txt
echo "client-to-client" >> /etc/openvpn/server.conf
echo ""
echo " ปรับเปลี่ยนระบบของเซิฟเวอร์เป็นรูปแบบที่ 1 เรียบร้อย "
echo ""
service openvpn restart

	;;

	2)

sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '20d' /etc/openvpn/client-common.txt
if [[ "$VERSION_ID" = 'VERSION_ID="7"' ]]; then
	echo "plugin /usr/lib/openvpn/openvpn-auth-pam.so /etc/pam.d/login" >> /etc/openvpn/server.conf
	echo "client-cert-not-required" >> /etc/openvpn/server.conf
	echo "username-as-common-name" >> /etc/openvpn/server.conf
else
	echo "plugin /usr/lib/openvpn/openvpn-plugin-auth-pam.so /etc/pam.d/login" >> /etc/openvpn/server.conf
	echo "client-cert-not-required" >> /etc/openvpn/server.conf
	echo "username-as-common-name" >> /etc/openvpn/server.conf
fi
echo "auth-user-pass" >> /etc/openvpn/client-common.txt
echo ""
echo " ปรับเปลี่ยนระบบของเซิฟเวอร์เป็นรูปแบบที่ 2 เรียบร้อย "
echo ""
service openvpn restart

	;;

	3)

sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '20d' /etc/openvpn/client-common.txt
echo "duplicate-cn" >> /etc/openvpn/server.conf
echo ""
echo " ปรับเปลี่ยนระบบของเซิฟเวอร์เป็นรูปแบบที่ 3 เรียบร้อย "
echo ""
service openvpn restart

	;;
	
esac

	;;

5) # ==================================================================================================================
	
clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo " เปิด-ปิด-รีสตาร์ท การทำงานของระบบ Admin MyGatherBK VPN "
echo ""
echo "|1| OPENVPN"
echo "|2| SSH DROPBEAR"
echo "|3| SQUID PROXY"
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " SERVICE

case $SERVICE in

	1)

	echo ""
	echo "|1| เปิด"
	echo "|2| ปิด"
	echo "|3| รีสตาร์ท"
	echo ""
	read -p "	เลือกหัวข้อที่ต้องการใช้งาน : " SERVICEOPENVPN

	case $SERVICEOPENVPN in

		1)
	service openvpn start
	echo ""
	echo "	OpenVPN STARTED "
	echo ""
	exit
		;;

		2)
	service openvpn stop
	echo ""
	echo "	OpenVPN STOPPED "
	echo ""
	exit
		;;

		3)
	service openvpn restart
	echo ""
	echo "	OpenVPN RESTARTED "
	echo ""
	exit
		;;

	esac

	;;

	2)

	echo ""
	echo -e "	|${GRAY}1${NC}| เปิด"
	echo -e "	|${GRAY}2${NC}| ปิด ${GRAY}หากปิดการทำงานจะไม่สามารถเข้าสู่เทอมินอลได้ ${NC} "
	echo -e "	|${GRAY}3${NC}| รีสตาร์ท"
	echo ""
	read -p "	เลือกหัวข้อที่ต้องการใช้งาน : " SERVICEDROPBEAR

	case $SERVICEDROPBEAR in

		1)

	if [[ -e /etc/default/dropbear ]]; then
		service ssh start
		echo ""
		echo -e "	SSH Dropbear ${GRAY}STARTED${NC}"
		echo ""
		exit
	elif [[ ! -e /etc/default/dropbear ]]; then
		echo ""
		echo "	ยังไม่ได้ติดตั้ง SSH Dropbear"
		echo ""
		exit
	fi
		;;

		2)
	if [[ -e /etc/default/dropbear ]]; then
		service ssh stop
		echo ""
		echo -e "	SSH Dropbear ${GRAY}STOPPED${NC}"
		echo ""
		exit
	elif [[ ! -e /etc/default/dropbear ]]; then
		echo ""
		echo "	ยังไม่ได้ติดตั้ง SSH Dropbear"
		echo ""
		exit
	fi
		;;

		3)
	if [[ -e /etc/default/dropbear ]]; then
		service ssh restart
		echo ""
		echo -e "	SSH Dropbear ${GRAY}RESTARTED${NC}"
		echo ""
		exit
	elif [[ ! -e /etc/default/dropbear ]]; then
		echo ""
		echo "	ยังไม่ได้ติดตั้ง SSH Dropbear"
		echo ""
		exit
	fi
		;;

	esac

	;;

	3)

	echo ""
	echo -e "	|${GRAY}1${NC}| เปิด"
	echo -e "	|${GRAY}2${NC}| ปิด"
	echo -e "	|${GRAY}3${NC}| รีสตาร์ท"
	echo ""
	read -p "	เลือกหัวข้อที่ต้องการใช้งาน : " SERVICEPROXY

	case $SERVICEPROXY in

		1)
	if [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
		if [[ ! -e /etc/squid/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid start
			echo ""
			echo -e "	Squid Proxy ${GRAY}STARTED${NC}"
			echo ""
			exit
		fi
	elif [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		if [[ ! -e /etc/squid3/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid3 start
			echo ""
			echo -e "	Squid Proxy ${GRAY}STARTED${NC}"
			echo ""
			exit
		fi
	fi
		;;

		2)
	if [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
		if [[ ! -e /etc/squid/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid stop
			echo ""
			echo -e "	Squid Proxy ${GRAY}STOPPED${NC}"
			echo ""
			exit
		fi
	elif [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		if [[ ! -e /etc/squid3/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid3 stop
			echo ""
			echo -e "	Squid Proxy ${GRAY}STOPPED${NC}"
			echo ""
			exit
		fi
	fi
		;;

		3)
	if [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
		if [[ ! -e /etc/squid/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid restart
			echo ""
			echo -e "	Squid Proxy ${GRAY}RESTARTED${NC}"
			echo ""
			exit
		fi
	elif [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		if [[ ! -e /etc/squid3/squid.conf ]]; then
			echo ""
			echo "	ยังไม่ได้ติดตั้ง Squid Proxy"
			echo ""
			exit
		else
			service squid3 restart
			echo ""
			echo -e "	Squid Proxy ${GRAY}RESTARTED${NC}"
			echo ""
			exit
		fi
	fi
		;;

	esac

	;;

esac

	;;
	
6) # ==================================================================================================================

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo "============================================= "
echo "ลำดับ   ชื่อบัญชีผู้ใช้       สถานะ     วันหมดอายุ "
echo "============================================= "
C=1
ON=0
OFF=0
while read ONOFF
do
	CLIENTOFFLINE=$(echo -e "${RED}OFFLINE${NC}")
	CLIENTONLINE=$(echo -e "${GREEN}ONLINE${NC}")
	ACCOUNT="$(echo $ONOFF | cut -d: -f1)"
	ID="$(echo $ONOFF | grep -v nobody | cut -d: -f3)"
	EXP="$(chage -l $ACCOUNT | grep "Account expires" | awk -F": " '{print $2}')"
	ONLINE="$(cat /etc/openvpn/openvpn-status.log | grep -Eom 1 $ACCOUNT | grep -Eom 1 $ACCOUNT)"
	if [[ $ID -ge 1000 ]]; then
		if [[ -z $ONLINE ]]; then
			printf "%-6s %-15s %-20s %-3s\n" "$C" "$ACCOUNT" "$CLIENTOFFLINE" "$EXP"
			OFF=$((OFF+1))
		else
			printf "%-6s %-15s %-20s %-3s\n" "$C" "$ACCOUNT" "$CLIENTONLINE" "$EXP"
			ON=$((ON+1))
		fi
			C=$((C+1))
        fi
done < /etc/passwd
TOTAL="$(awk -F: '$3 >= '1000' && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo ""
echo ""
echo -e "กำลังเชื่อมต่อ ${GREEN}$ON${NC}  |  ไม่ได้เชื่อมต่อ ${RED}$OFF${NC}  |  บัญชีทั้งหมด $TOTAL "
echo ""
exit

	;;
	
7) # ==================================================================================================================

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
read -p "ชื่อบัญชีที่ต้องการลบ : " CLIENT
egrep "^$CLIENT" /etc/passwd >/dev/null

if [ $? -eq 0 ]; then
	if [[ $CHECKSYSTEM ]]; then
		echo ""
		userdel -f $CLIENT
		echo ""
		echo -e "ชื่อบัญชี ${GRAY}$CLIENT${NC} ถูกลบออกจากระบบเรียบร้อยแล้ว"
		echo ""
		exit
	else
		echo ""
		userdel -f $CLIENT
		cd /etc/openvpn/easy-rsa/
		./easyrsa --batch revoke $CLIENT
		EASYRSA_CRL_DAYS=3650 ./easyrsa gen-crl
		rm -rf pki/reqs/$CLIENT.req
		rm -rf pki/private/$CLIENT.key
		rm -rf pki/issued/$CLIENT.crt
		rm -rf /etc/openvpn/crl.pem
		cp /etc/openvpn/easy-rsa/pki/crl.pem /etc/openvpn/crl.pem
		chown nobody:$GROUPNAME /etc/openvpn/crl.pem
		echo ""
		echo -e "ชื่อบัญชี ${GRAY}$CLIENT${NC} ถูกลบออกจากระบบเรียบร้อยแล้ว"
		echo ""
		exit
	fi
else
	echo ""
	echo "ไม่มีชื่อบัญชีที่ระบุ"
	echo ""
	exit
fi

	;;
8) # ==================================================================================================================

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
			NUMBEROFCLIENTS=$(tail -n +2 /etc/openvpn/easy-rsa/pki/index.txt | grep -c "^V")
			if [[ "$NUMBEROFCLIENTS" = '0' ]]; then
				echo
				echo "no existing clients!ที่มีอยู่!"
				exit
			fi
			echo
			echo "เลือกใบรับรองไคลเอ็นต์ที่มีอยู่ที่คุณต้องการเพิกถอน:"
			tail -n +2 /etc/openvpn/easy-rsa/pki/index.txt | grep "^V" | cut -d '=' -f 2 | nl -s ') '
			if [[ "$NUMBEROFCLIENTS" = '1' ]]; then
				read -p "Select one client [1]: " CLIENTNUMBER
			else
				read -p "Select one client [1-$NUMBEROFCLIENTS]: " CLIENTNUMBER
			fi
			CLIENT=$(tail -n +2 /etc/openvpn/easy-rsa/pki/index.txt | grep "^V" | cut -d '=' -f 2 | sed -n "$CLIENTNUMBER"p)
			echo
			read -p "คุณต้องการยกเลิกการเข้าถึงสำหรับหรือไม่ client $CLIENT? [y/N]: " -e REVOKE
			if [[ "$REVOKE" = 'y' || "$REVOKE" = 'Y' ]]; then
				cd /etc/openvpn/easy-rsa/
				./easyrsa --batch revoke $CLIENT
				EASYRSA_CRL_DAYS=3650 ./easyrsa gen-crl
				rm -f pki/reqs/$CLIENT.req
				rm -f pki/private/$CLIENT.key
				rm -f pki/issued/$CLIENT.crt
				rm -f /etc/openvpn/crl.pem
				cp /etc/openvpn/easy-rsa/pki/crl.pem /etc/openvpn/crl.pem
				# CRL is read with each client connection, when OpenVPN is dropped to nobody
				chown nobody:$GROUPNAME /etc/openvpn/crl.pem
				echo
				echo "ใบรับรองสำหรับ $CLIENT เพิกถอนเรียบร้อย!"
			else
				echo
				echo "การเพิกถอนใบรับรองสำหรับ $CLIENT ยกเลิก!"
			fi
			exit
			;;
9) # ==================================================================================================================
#!/bin/bash
clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo "             === WELLCOM === "
echo " ======================================"
echo "    กำหนดรหัสผ่านสำหรับล็อกอินด้วยชื่อ root  "
echo " ====================================="
passwd
cat > /etc/ssh/sshd_config <<-END
Port 22
Port 143
Protocol 2
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_dsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
UsePrivilegeSeparation yes
KeyRegenerationInterval 3600
ServerKeyBits 1024
SyslogFacility AUTH
LogLevel INFO
LoginGraceTime 120
PermitRootLogin yes
StrictModes yes
RSAAuthentication yes
PubkeyAuthentication yes
IgnoreRhosts yes
RhostsRSAAuthentication no
HostbasedAuthentication no
PermitEmptyPasswords no
ChallengeResponseAuthentication no
X11Forwarding yes
X11DisplayOffset 10
PrintMotd no
PrintLastLog yes
TCPKeepAlive yes
Subsystem sftp /usr/lib/openssh/sftp-server
UsePAM yes
ClientAliveInterval 120
ClientAliveCountMax 2
END
service ssh restart
exit
;;

10) # ==================================================================================================================
 
  if [ ! -e /usr/local/bin/Reboot-Server ]; then
	echo '#!/bin/bash' > /usr/local/bin/Reboot-Server
	echo '' >> /usr/local/bin/Reboot-Server
	echo 'DATE=$(date +"%m-%d-%Y")' >> /usr/local/bin/Reboot-Server
	echo 'TIME=$(date +"%T")' >> /usr/local/bin/Reboot-Server
	echo 'echo "รีบูทเมื่อวันที่ $DATE เวลา $TIME" >> /usr/local/bin/Reboot-Log' >> /usr/local/bin/Reboot-Server
	echo '/sbin/shutdown -r now' >> /usr/local/bin/Reboot-Server
	chmod +x /usr/local/bin/Reboot-Server
fi

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo -e "${GRAY}ตั้งค่าเวลารีบูทเซิฟเวอร์อัตโนมัติ ${NC} "
echo ""
echo -e "|${GRAY}1${NC}| รีบูททุกๆ  1 ชั่วโมง"
echo -e "|${GRAY}2${NC}| รีบูททุกๆ  6 ชั่วโมง"
echo -e "|${GRAY}3${NC}| รีบูททุกๆ 12 ชั่วโมง"
echo -e "|${GRAY}4${NC}| รีบูททุกๆ  1 วัน"
echo -e "|${GRAY}5${NC}| รีบูททุกๆ  7 วัน"
echo -e "|${GRAY}6${NC}| รีบูททุกๆ 30 วัน"
echo -e "|${GRAY}7${NC}| หยุดการรีบูทเซิฟเวอร์"
echo -e "|${GRAY}8${NC}| ตรวจสอบดูบันทึกการรีบูทเซิฟเวอร์"
echo -e "|${GRAY}9${NC}| ลบบันทึกการรีบูทเซิฟเวอร์"
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " REBOOT

case $REBOOT in

	1)

echo "0 * * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 1 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	2)

echo "0 */6 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 6 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	3)

echo "0 */12 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 12 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	4)

echo "0 0 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 1 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	5)

echo "0 0 * * MON root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 7 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	6)

echo "0 0 1 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 30 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	7)

rm -rf /usr/local/bin/Reboot-Server
echo ""
echo "หยุดการรีบูทเซิฟเวอร์เรียบร้อยแล้ว"
echo ""
exit

	;;

	8)

if [[ ! -e /usr/local/bin/Reboot-Log ]]; then
	echo ""
	echo "ไม่มีบันทึกการรีบูทเซิฟเวอร์"
	echo ""
	exit
else
	echo ""
	cat /usr/local/bin/Reboot-Log
	echo ""
	exit
fi

	;;

	9)

rm -rf /usr/local/bin/Reboot-Log
echo ""
echo "ลบบันทึกการรีบูทเซิฟเวอร์เรียบร้อยแล้ว"
echo ""
exit

	;;

esac

	;;
	
11) # ==================================================================================================================

if [[ ! -e /usr/local/bin/Banwidth-Per-Client ]]; then
	apt-get install python
	wget -O /usr/local/bin/Banwidth-Per-Client "https://raw.githubusercontent.com/MyGatherBk/PURE/master/Banwidth-Per-Client"
	chmod +x /usr/local/bin/Banwidth-Per-Client
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo ""
	Banwidth-Per-Client
	echo ""
else
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	Banwidth-Per-Client
	echo ""
fi

	;;
	
12) # ==================================================================================================================

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	read -p "ชื่อบัญชีที่ต้องการเปลี่ยนรหัสผ่าน : " CLIENTNAME
	egrep "^$CLIENTNAME" /etc/passwd >/dev/null

	if [ $? -eq 0 ]; then
		echo ""
		read -p "รหัสผ่านที่ต้องการปลี่ยน : " NEWPASSWORD
		read -p "ยืนยันรหัสผ่านอีกครั้ง : " RETYPEPASSWORD

		if [[ $NEWPASSWORD = $RETYPEPASSWORD ]]; then
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
			echo "ระบบได้ทำการเปลี่ยนรหัสผ่านเรียบร้อยแล้ว"
			echo ""
			echo "ชื่อบัญชีผู้ใข้ : $CLIENTNAME"
			echo "รหัสผ่านใหม่ : $NEWPASSWORD"
			echo ""
			exit
		else
			echo ""
			echo "เปลี่ยนรหัสผ่านไม่สำเร็จ การยืนยันรหัสผ่านไม่สอดคล้อง"
			echo ""
			exit
		fi
	else

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		echo "ไม่มีชื่อบัญชีที่ระบุอยู่ในระบบ"
		echo ""
		read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

		if [[ "$TOMENU" = 'Y' ]]; then
			menu
			exit
		elif [[ "$TOMENU" = 'N' ]]; then
			exit
		fi
	fi

	;;
	
13) # ==================================================================================================================

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
read -p "ชื่อบัญชีที่ต้องการเปลี่ยนวันหมดอายุ : " -e CLIENT

if [ $? -eq 0 ]; then
	EXP="$(chage -l $CLIENT | grep "Account expires" | awk -F": " '{print $2}')"
	echo ""
	echo -e "ชื่อบัญชีนี้หมดอายุในวันที่ ${GRAY}$EXP${NC}"
	echo ""
	read -p "เปลี่ยนวันหมดอายุ : " -e TimeActive
	userdel $CLIENT
	useradd -e `date -d "$TimeActive days" +"%Y-%m-%d"` -s /bin/false -M $CLIENT
	EXP="$(chage -l $CLIENT | grep "Account expires" | awk -F": " '{print $2}')"
	echo -e "$CLIENT\n$CLIENT\n"|passwd $CLIENT &> /dev/null
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "ชื่อบัญชี : $CLIENT"
	echo "หมดวันหมดในวันที่ : $EXP"
	echo ""
	exit

else

	echo ""
	echo "ไม่มีชื่อบัญชีที่ระบุอยู่ในระบบ"
	echo ""
	read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

	if [[ "$TOMENU" = 'Y' ]]; then
		menu
		exit
	elif [[ "$TOMENU" = 'N' ]]; then
		exit
	fi
fi

	;;
14) # ==================================================================================================================

INTERFACE=`ifconfig | head -n1 | awk '{print $1}' | cut -d ':' -f 1`
TODAY=$(vnstat -i $INTERFACE | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')
YESTERDAY=$(vnstat -i $INTERFACE | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')
WEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $9" "substr ($10, 1, 1)}')
RXWEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $3" "substr ($10, 1, 1)}')
TXWEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $6" "substr ($10, 1, 1)}')
MOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')
RXMOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($10, 1, 1)}')
TXMOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($10, 1, 1)}')
TOTAL=$(vnstat -i $INTERFACE | grep "total:" | awk '{print $8" "substr ($9, 1, 1)}')
RXTOTAL=$(vnstat -i $INTERFACE | grep "rx:" | awk '{print $2" "substr ($9, 1, 1)}')
TXTOTAL=$(vnstat -i $INTERFACE | grep "tx:" | awk '{print $5" "substr ($9, 1, 1)}')

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo -e "แบนด์วิดท์ ${GRAY}MyGatherBK-VPN${NC}"
	echo ""
	echo -e "วันนี้ ${GRAY}$TODAY${NC}"
	echo -e "เมื่อวานนี้ ${GRAY}$YESTERDAY${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXWEEK${NC} ส่งข้อมูล (tx) ${GRAY}$TXWEEK${NC}"
	echo -e "สัปดาห์นี้ ${GRAY}$WEEK${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXMOUNT${NC} ส่งข้อมูล (tx) ${GRAY}$TXMOUNT${NC}"
	echo -e "รวมทั้งหมดเฉพาะเดือนนี้ ${GRAY}$MOUNT${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXTOTAL${NC} ส่งข้อมูล (tx) ${GRAY}$TXTOTAL${NC}"
	echo -e "รวมทั้งหมด ${GRAY}$TOTAL${NC}"
	echo ""
	exit

	;;
	
	15) # ==================================================================================================================

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo " ปรับความเร็วอินเตอร์เน็ต  "
echo ""
echo "|1| เปิดใช้งานการปรับแต่งความเร็วอินเทอร์เน็ต"
echo "|2| ปิดใช้งานการปรับแต่งความเร็วอินเทอร์เน็ต"
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " LIMITINTERNET

case $LIMITINTERNET in

	1)

echo ""
echo "|1| Megabyte (Mbps)"
echo "|2| Kilobyte (Kbps)"
echo ""
read -p "กรุณาเลือกหน่วยวัดความเร็วอินเทอร์เน็ต : " -e PERSECOND
case $PERSECOND in
	1)
	PERSECOND=mbit
	;;
	2)
	PERSECOND=kbit
	;;
esac

echo ""
echo ""
echo " วิธีการใส่ : เช่นต้องการให้มีความเร็ว 10Mbps ให้ใส่เลข 10 "
echo " หากต้องการให้มีความเร็ว 512Kbps ให้ใส่เลข 512 "
echo ""
read -p "ใส่จำนวนความเร็วการดาวน์โหลด : " -e CHDL
read -p "ใส่จำนวนความเร็วการอัพโหลด : " -e CHUL

DNLD=$CHDL$PERSECOND
UPLD=$CHUL$PERSECOND

TC=/sbin/tc

IF="$(ip ro | awk '$1 == "default" { print $5 }')"
IP="$(ip -o ro get $(ip ro | awk '$1 == "default" { print $3 }') | awk '{print $5}')/32"     # Host IP

U32="$TC filter add dev $IF protocol ip parent 1: prio 1 u32"

    $TC qdisc add dev $IF root handle 1: htb default 30
    $TC class add dev $IF parent 1: classid 1:1 htb rate $DNLD
    $TC class add dev $IF parent 1: classid 1:2 htb rate $UPLD
    $U32 match ip dst $IP flowid 1:1
    $U32 match ip src $IP flowid 1:2
    echo ""
    echo " ความเร็วดาวน์โหลด $CHDL $PERSECOND "
    echo " ความเร็วอัพโหลด $CHUL $PERSECOND"
    echo ""
    echo "เปิดใช้งานการปรับแต่งความเร็วอินเทอร์เน็ต"
    echo ""
    exit

	;;

	2)

TC=/sbin/tc
IF="$(ip ro | awk '$1 == "default" { print $5 }')"

    $TC qdisc del dev $IF root
    echo ""
    echo " ปิดใช้งานการปรับแต่งความเร็วอินเทอร์เน็ต"
    echo ""
    exit

	;;

esac

	;;
	
	16) # ==================================================================================================================
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
if [[ ! $CHECKSYSTEM ]]; then
	echo ""
	echo "ใช้งานไม่ได้กับเซิฟเวอร์ระบบปัจจุบัน"
	echo ""
	exit
fi

clear
echo ""
echo ""
echo " =============== OS-32 & 64-bit =================    "
echo " #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo " #      -----------About Us------------         #    "
echo " #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo " #       Truemoney Wallet : 096-746-2978        #    "
echo " #               { VPN / SSH }                  #    "
echo " #         BY : Pirakit Khawpleum               #    "
echo " #    FB : https://m.me/pirakrit.khawplum       #    "
echo " =============== OS-32 & 64-bit =================    "
echo " ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo " แบนและปลดแบนบัญชีผู้ใช้  "
echo ""
echo " |1| แบนบัญชีผู้ใช้"
echo " |2| ปลดแบนบัญชีผู้ใช้"
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " BandUB
case $BandUB in

	1)

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
read -p "ชื่อบัญชีที่ต้องการแบน : " CLIENT

egrep "^$CLIENT" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	echo "V=$CLIENT" >> /usr/local/bin/Ban-Unban
	passwd -l $CLIENT
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "บัญชีชื่อ $CLIENT ได้ถูกแบนเรียบร้อยแล้ว"
	echo ""
	exit
elif [ $? -eq 1 ]; then
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "ไม่มีชื่อบัญชีที่ระบุอยู่ในระบบ"
	echo ""
	read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

	if [[ "$TOMENU" = 'Y' ]]; then
		menu
		exit
	elif [[ "$TOMENU" = 'N' ]]; then
		exit
	fi
fi

	;;

	2)

echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
read -p "ชื่อบัญชีที่ต้องการปลดแบน : " CLIENT

egrep "^$CLIENT" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	sed -i 's/V=$CLIENT/R=$CLIENT/g' /usr/local/bin/Ban-Unban
	passwd -u $CLIENT
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo " บัญชีชื่อ $CLIENT ได้ถูกปลดแบนเรียบร้อยแล้ว "
	echo ""
	exit

elif [ $? -eq 1 ]; then
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo " ชื่อบัญชีที่ระบุไม่ได้ถูกแบน หรือไม่มีชื่อบัญชีที่ระบุอยู่ในระบบ "
	echo ""
	read -p "กลับไปที่เมนู (Y or N) : " -e -i Y TOMENU

	if [[ "$TOMENU" = 'Y' ]]; then
		menu
		exit
	elif [[ "$TOMENU" = 'N' ]]; then
		exit
	fi
fi

	;;

esac

	;;


17) # ================================================================================================================== 
#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
	echo ""
	echo "กรุณาเข้าสู่ระบบผู้ใช้ root ก่อนทำการใช้งานสคริปท์"
	echo "คำสั่งเข้าสู่ระบบผู้ใช้ root คือ sudo -i"
	echo ""
	exit
fi

if [[ ! -e /dev/net/tun ]]; then
	echo ""
	echo "TUN ไม่สามารถใช้งานได้"
	exit
fi

# Set Localtime GMT +7
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime

clear
# IP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
# if [[ "$IP" = "" ]]; then
IP=$(wget -4qO- "http://whatismyip.akamai.com/")
# fi


if [[ -e /etc/debian_version ]]; then
	OS=debian
	VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
	GROUPNAME=nogroup
	RCLOCAL='/etc/rc.local'

	if [[ "$VERSION_ID" != 'VERSION_ID="7"' ]] && [[ "$VERSION_ID" != 'VERSION_ID="8"' ]] && [[ "$VERSION_ID" != 'VERSION_ID="9"' ]] && [[ "$VERSION_ID" != 'VERSION_ID="14.04"' ]] && [[ "$VERSION_ID" != 'VERSION_ID="16.04"' ]] && [[ "$VERSION_ID" != 'VERSION_ID="18.04"' ]]; then
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		echo "เวอร์ชั่น OS ของคุณเป็นเวอร์ชั่นที่ยังไม่รองรับ"
		echo "สำหรับเวอร์ชั่นที่รองรับได้ จะมีดังนี้..."
		echo ""
		echo "Ubuntu 14.04 - 16.04 - 18.04"
		echo "Debian 7 - 8 - 9"
		echo ""
		exit
	fi
else
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "OS ที่คุณใช้ไม่สามารถรองรับได้กับสคริปท์นี้"
	echo "สำหรับ OS ที่รองรับได้ จะมีดังนี้..."
	echo ""
	echo "Ubuntu 14.04 - 16.04 - 18.04"
	echo "Debian 7 - 8 - 9"
	echo ""
	exit
fi


echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo "Script  install openvpn"
echo "
sudo -i
wget https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh
"
# Install openvpn
cd
echo " 
----------------------------------------------
[√] ระบบสคริป  : Pirakit Khawpleum 
[√] กรุณารอสักครู่ .....
[√] Loading .....
----------------------------------------------
 "
newclient () {
	# Generates the custom client.ovpn
	cp /etc/openvpn/client-common.txt ~/$1.ovpn
	echo "<ca>" >> ~/$1.ovpn
	cat /etc/openvpn/easy-rsa/pki/ca.crt >> ~/$1.ovpn
	echo "</ca>" >> ~/$1.ovpn
	echo "<cert>" >> ~/$1.ovpn
	sed -ne '/BEGIN CERTIFICATE/,$ p' /etc/openvpn/easy-rsa/pki/issued/$1.crt >> ~/$1.ovpn
	echo "</cert>" >> ~/$1.ovpn
	echo "<key>" >> ~/$1.ovpn
	cat /etc/openvpn/easy-rsa/pki/private/$1.key >> ~/$1.ovpn
	echo "</key>" >> ~/$1.ovpn
	echo "<tls-auth>" >> ~/$1.ovpn
	sed -ne '/BEGIN OpenVPN Static key/,$ p' /etc/openvpn/ta.key >> ~/$1.ovpn
	echo "</tls-auth>" >> ~/$1.ovpn
}

if [[ -e /etc/openvpn/server.conf ]]; then
   echo
   read -p "คุณต้องการลบ OpenVPN จริง ๆ หรือไม่ [y/N]: " -e REMOVE
   if [[ "$REMOVE" = 'y' || "$REMOVE" = 'Y' ]]; then
   PORT=$(grep '^port ' /etc/openvpn/server.conf | cut -d " " -f 2)
   PROTOCOL=$(grep '^proto ' /etc/openvpn/server.conf | cut -d " " -f 2)
   if pgrep firewalld; then
   IP=$(firewall-cmd --direct --get-rules ipv4 nat POSTROUTING | grep '\-s 10.8.0.0/24 '"'"'!'"'"' -d 10.8.0.0/24 -j SNAT --to ' | cut -d " " -f 10)
   # Using both permanent and not permanent rules to avoid a firewalld reload.
   firewall-cmd --zone=public --remove-port=$PORT/$PROTOCOL
   firewall-cmd --zone=trusted --remove-source=10.8.0.0/24
   firewall-cmd --permanent --zone=public --remove-port=$PORT/$PROTOCOL
   firewall-cmd --permanent --zone=trusted --remove-source=10.8.0.0/24
   firewall-cmd --direct --remove-rule ipv4 nat POSTROUTING 0 -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
   firewall-cmd --permanent --direct --remove-rule ipv4 nat POSTROUTING 0 -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
   else
   IP=$(grep 'iptables -t nat -A POSTROUTING -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to ' $RCLOCAL | cut -d " " -f 14)
   iptables -t nat -D POSTROUTING -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
   sed -i '/iptables -t nat -A POSTROUTING -s 10.8.0.0\/24 ! -d 10.8.0.0\/24 -j SNAT --to /d' $RCLOCAL
   if iptables -L -n | grep -qE '^ACCEPT'; then
   iptables -D INPUT -p $PROTOCOL --dport $PORT -j ACCEPT
   iptables -D FORWARD -s 10.8.0.0/24 -j ACCEPT
   iptables -D FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
   sed -i "/iptables -I INPUT -p $PROTOCOL --dport $PORT -j ACCEPT/d" $RCLOCAL
   sed -i "/iptables -I FORWARD -s 10.8.0.0\/24 -j ACCEPT/d" $RCLOCAL
   sed -i "/iptables -I FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT/d" $RCLOCAL
   fi
   fi
   if sestatus 2>/dev/null | grep "Current mode" | grep -q "enforcing" && [[ "$PORT" != '1194' ]]; then
					semanage port -d -t openvpn_port_t -p $PROTOCOL $PORT
   fi
   apt-get remove --purge -y nginx
   rm -rf /home/vps/public_html
   rm -rf /etc/openvpn
   rm -rf /usr/local/bin/*
   echo ""
		read -p "ต้องการลบข้อมูลบัญชีทั้งหมดหรือไม่ (Y or N) : " -e -i N DELETEACCOUNT
		if [[ "$DELETEACCOUNT" = "Y" ]]; then
			UIDN=1000
			while read CHECKCLIENT
			do
				ACCOUNT="$(echo $CHECKCLIENT | cut -d: -f1)"
				ID="$(echo $CHECKCLIENT | grep -v nobody | cut -d: -f3)"
				if [[ $ID -ge $UIDN ]]; then
					userdel $ACCOUNT
				fi
			done < /etc/passwd
		fi
   if [[ "$OS" = 'debian' ]]; then
   apt-get remove --purge -y openvpn
   else
   yum remove openvpn -y
   fi
   rm -rf /etc/openvpn
   rm -f /etc/sysctl.d/30-openvpn-forward.conf
   echo
   echo -e "${GRAY}OpenVPN Removed. ${NC} "

   else
   echo
   echo -e "${GRAY}Removal Aborted. ${NC} "
   fi
			exit


# elif [[ -e /etc/apt/sources.list.d/pritunl.list ]]; then
# echo ""
# echo "ไม่สามารถติดตั้ง OpenVPN ได้"
# echo "เนื่องจาก IP นี้ได้ติดตั้ง OpenVPN ที่ควบคุมการใช้งานผ่าน PRITUNL ไปก่อนหน้านี้แล้ว"
# exit

else
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
# Install openvpn
cd
echo " 
----------------------------------------------
[√] ระบบสคริป  : Pirakit Khawpleum 
[√] กรุณารอสักครู่ .....
[√] Loading .....
----------------------------------------------
 "
	read -p "IP Server : " -e -i $IP IP
	read -p "Port Server : " -e -i 443 PORT
	read -p "Port Proxy : " -e -i 8080 PROXY
	echo ""
	echo " |1| UDP "
	echo " |2| TCP "
	echo ""
	read -p "Protocol : " -e -i 2 PROTOCOL
	case $PROTOCOL in
		1) 
		PROTOCOL=udp
		;;
		2) 
		PROTOCOL=tcp
		;;
	esac
	echo ""
	echo " |1| DNS Current System "
	echo " |2| DNS Google "
	echo ""
	read -p "DNS : " -e -i 2 DNS
	echo ""
	echo "  |1| 1 ไฟล์เชื่อมต่อได้ 1 เครื่องเท่านั้น แต่สามารถสร้างไฟล์เพิ่มได้"
	echo "  |2| 1 ไฟล์เชื่อมต่อได้หลายเครื่อง แต่ต้องใช้ชื่อบัญชีและรหัสผ่านเพื่อใช้เชื่อมต่อ"
	echo "  |3| 1 ไฟล์เชื่อมต่อได้ไม่จำกัดจำนวนเครื่อง"
	echo ""
	read -p "Server System : " -e -i 3 OPENVPNSYSTEM
	echo ""
	read -p "Server Name: " -e CLIENT
	echo ""
	case $OPENVPNSYSTEM in
		2)
		read -p "Your Username : " -e Usernames
		read -p "Your Password : " -e Passwords
		;;
	esac
	echo ""
	read -n1 -r -p "กด Enter 1 ครั้งเพื่อเริ่มทำการติดตั้ง หรือกด CTRL+C เพื่อยกเลิก"

	apt-get update
	apt-get install openvpn iptables openssl ca-certificates -y

	# Get easy-rsa
	EASYRSAURL='https://github.com/OpenVPN/easy-rsa/releases/download/v3.0.5/EasyRSA-nix-3.0.5.tgz'
	wget -O ~/easyrsa.tgz "$EASYRSAURL" 2>/dev/null || curl -Lo ~/easyrsa.tgz "$EASYRSAURL"
	tar xzf ~/easyrsa.tgz -C ~/
	mv ~/EasyRSA-3.0.5/ /etc/openvpn/
	mv /etc/openvpn/EasyRSA-3.0.5/ /etc/openvpn/easy-rsa/
	chown -R root:root /etc/openvpn/easy-rsa/
	rm -f ~/easyrsa.tgz
	cd /etc/openvpn/easy-rsa/
	# Create the PKI, set up the CA and the server and client certificates
	./easyrsa init-pki
	./easyrsa --batch build-ca nopass
	EASYRSA_CERT_EXPIRE=3650 ./easyrsa build-server-full server nopass
	EASYRSA_CERT_EXPIRE=3650 ./easyrsa build-client-full $CLIENT nopass
	EASYRSA_CRL_DAYS=3650 ./easyrsa gen-crl
	# Move the stuff we need
	cp pki/ca.crt pki/private/ca.key pki/issued/server.crt pki/private/server.key pki/crl.pem /etc/openvpn
	# CRL is read with each client connection, when OpenVPN is dropped to nobody
	chown nobody:$GROUPNAME /etc/openvpn/crl.pem
	# Generate key for tls-auth
	openvpn --genkey --secret /etc/openvpn/ta.key
	# Create the DH parameters file using the predefined ffdhe2048 group
	echo '-----BEGIN DH PARAMETERS-----
MIIBCAKCAQEA//////////+t+FRYortKmq/cViAnPTzx2LnFg84tNpWp4TZBFGQz
+8yTnc4kmz75fS/jY2MMddj2gbICrsRhetPfHtXV/WVhJDP1H18GbtCFY2VVPe0a
87VXE15/V8k1mE8McODmi3fipona8+/och3xWKE2rec1MKzKT0g6eXq8CrGCsyT7
YdEIqUuyyOP7uWrat2DX9GgdT0Kj3jlN9K5W7edjcrsZCwenyO4KbXCeAvzhzffi
7MA0BM0oNC9hkXL+nOmFg/+OTxIy7vKBg8P+OxtMb61zO7X8vC7CIAXFjvGDfRaD
ssbzSibBsu/6iGtCOGEoXJf//////////wIBAg==
-----END DH PARAMETERS-----' > /etc/openvpn/dh.pem
	# Generate server.conf
	echo "port $PORT
proto $PROTOCOL
dev tun
sndbuf 0
rcvbuf 0
ca ca.crt
cert server.crt
key server.key
dh dh.pem
auth SHA512
tls-auth ta.key 0
topology subnet
server 10.8.0.0 255.255.255.0
ifconfig-pool-persist ipp.txt" > /etc/openvpn/server.conf
	echo 'push "redirect-gateway def1 bypass-dhcp"' >> /etc/openvpn/server.conf
	# DNS
	case $DNS in
		1)
		# Locate the proper resolv.conf
		# Needed for systems running systemd-resolved
		if grep -q "127.0.0.53" "/etc/resolv.conf"; then
			RESOLVCONF='/run/systemd/resolve/resolv.conf'
		else
			RESOLVCONF='/etc/resolv.conf'
		fi
		# Obtain the resolvers from resolv.conf and use them for OpenVPN
		grep -v '#' $RESOLVCONF | grep 'nameserver' | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | while read line; do
			echo "push \"dhcp-option DNS $line\"" >> /etc/openvpn/server.conf
		done
		;;
		2)
		echo 'push "dhcp-option DNS 1.1.1.1"' >> /etc/openvpn/server.conf
		echo 'push "dhcp-option DNS 1.0.0.1"' >> /etc/openvpn/server.conf
		;;
		3)
		echo 'push "dhcp-option DNS 8.8.8.8"' >> /etc/openvpn/server.conf
		echo 'push "dhcp-option DNS 8.8.4.4"' >> /etc/openvpn/server.conf
		;;
		4)
		echo 'push "dhcp-option DNS 208.67.222.222"' >> /etc/openvpn/server.conf
		echo 'push "dhcp-option DNS 208.67.220.220"' >> /etc/openvpn/server.conf
		;;
		5)
		echo 'push "dhcp-option DNS 64.6.64.6"' >> /etc/openvpn/server.conf
		echo 'push "dhcp-option DNS 64.6.65.6"' >> /etc/openvpn/server.conf
		;;
	esac
	echo "keepalive 10 120
cipher AES-256-CBC
user nobody
group $GROUPNAME
persist-key
persist-tun
status openvpn-status.log
verb 3
crl-verify crl.pem" >> /etc/openvpn/server.conf
	# Enable net.ipv4.ip_forward for the system
	echo 'net.ipv4.ip_forward=1' > /etc/sysctl.d/30-openvpn-forward.conf
	# Enable without waiting for a reboot or service restart
	echo 1 > /proc/sys/net/ipv4/ip_forward
	if pgrep firewalld; then
		# Using both permanent and not permanent rules to avoid a firewalld
		# reload.
		# We don't use --add-service=openvpn because that would only work with
		# the default port and protocol.
		firewall-cmd --zone=public --add-port=$PORT/$PROTOCOL
		firewall-cmd --zone=trusted --add-source=10.8.0.0/24
		firewall-cmd --permanent --zone=public --add-port=$PORT/$PROTOCOL
		firewall-cmd --permanent --zone=trusted --add-source=10.8.0.0/24
		# Set NAT for the VPN subnet
		firewall-cmd --direct --add-rule ipv4 nat POSTROUTING 0 -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
		firewall-cmd --permanent --direct --add-rule ipv4 nat POSTROUTING 0 -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
	else
		# Needed to use rc.local with some systemd distros
		if [[ "$OS" = 'debian' && ! -e $RCLOCAL ]]; then
			echo '#!/bin/sh -e
exit 0' > $RCLOCAL
		fi
		chmod +x $RCLOCAL
		# Set NAT for the VPN subnet
		iptables -t nat -A POSTROUTING -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP
		sed -i "1 a\iptables -t nat -A POSTROUTING -s 10.8.0.0/24 ! -d 10.8.0.0/24 -j SNAT --to $IP" $RCLOCAL
		if iptables -L -n | grep -qE '^(REJECT|DROP)'; then
			# If iptables has at least one REJECT rule, we asume this is needed.
			# Not the best approach but I can't think of other and this shouldn't
			# cause problems.
			iptables -I INPUT -p $PROTOCOL --dport $PORT -j ACCEPT
			iptables -I FORWARD -s 10.8.0.0/24 -j ACCEPT
			iptables -I FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
			sed -i "1 a\iptables -I INPUT -p $PROTOCOL --dport $PORT -j ACCEPT" $RCLOCAL
			sed -i "1 a\iptables -I FORWARD -s 10.8.0.0/24 -j ACCEPT" $RCLOCAL
			sed -i "1 a\iptables -I FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT" $RCLOCAL
		fi
	fi
	# If SELinux is enabled and a custom port was selected, we need this
	if sestatus 2>/dev/null | grep "Current mode" | grep -q "enforcing" && [[ "$PORT" != '1194' ]]; then
		# Install semanage if not already present
		if ! hash semanage 2>/dev/null; then
			yum install policycoreutils-python -y
		fi
		semanage port -a -t openvpn_port_t -p $PROTOCOL $PORT
	fi
	# And finally, restart OpenVPN
	if [[ "$OS" = 'debian' ]]; then
		# Little hack to check for systemd
		if pgrep systemd-journal; then
			systemctl restart openvpn@server.service
		else
			/etc/init.d/openvpn restart
		fi
	else
		if pgrep systemd-journal; then
			systemctl restart openvpn@server.service
			systemctl enable openvpn@server.service
		else
			service openvpn restart
			chkconfig openvpn on
		fi
	fi
	# If the server is behind a NAT, use the correct IP address
	if [[ "$PUBLICIP" != "" ]]; then
		IP=$PUBLICIP
	fi
	# client-common.txt is created so we have a template to add further users later
	echo "client
dev tun
proto $PROTOCOL
sndbuf 0
rcvbuf 0
remote $IP $PORT
http-proxy $IP $PROXY
resolv-retry infinite
nobind
persist-key
persist-tun
remote-cert-tls server
auth SHA512
cipher AES-256-CBC
setenv opt block-outside-dns
key-direction 1
verb 3" > /etc/openvpn/client-common.txt

	case $OPENVPNSYSTEM in
		2)
		echo "auth-user-pass" >> /etc/openvpn/client-common.txt
		;;
	esac
echo ""
echo -e "\033[35;1m { install nginx }  "
echo ""
	cd
	apt-get -y install nginx
	cat > /etc/nginx/nginx.conf <<END
user www-data;
worker_processes 2;
pid /var/run/nginx.pid;
events {
	multi_accept on;
        worker_connections 1024;
}
http {
	autoindex on;
        sendfile on;
        tcp_nopush on;
        tcp_nodelay on;
        keepalive_timeout 65;
        types_hash_max_size 2048;
        server_tokens off;
        include /etc/nginx/mime.types;
        default_type application/octet-stream;
        access_log /var/log/nginx/access.log;
        error_log /var/log/nginx/error.log;
        client_max_body_size 32M;
	client_header_buffer_size 8m;
	large_client_header_buffers 8 8m;
	fastcgi_buffer_size 8m;
	fastcgi_buffers 8 8m;
	fastcgi_read_timeout 600;
        include /etc/nginx/conf.d/*.conf;
}
END
	mkdir -p /home/vps/public_html
	echo "<pre>by MyGatherBK | MyGatherBK</pre>" > /home/vps/public_html/index.html
	echo "<?phpinfo(); ?>" > /home/vps/public_html/info.php
	args='$args'
	uri='$uri'
	document_root='$document_root'
	fastcgi_script_name='$fastcgi_script_name'
	cat > /etc/nginx/conf.d/vps.conf <<END
server {
    listen       85;
    server_name  127.0.0.1 localhost;
    access_log /var/log/nginx/vps-access.log;
    error_log /var/log/nginx/vps-error.log error;
    root   /home/vps/public_html;
    location / {
        index  index.html index.htm index.php;
	try_files $uri $uri/ /index.php?$args;
    }
    location ~ \.php$ {
        include /etc/nginx/fastcgi_params;
        fastcgi_pass  127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    }
}
END

	if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
		if [[ -e /etc/squid3/squid.conf ]]; then
			apt-get -y remove --purge squid3
		fi
echo ""
echo -e "\033[0;32m { Install PROXY }  "
echo ""
		apt-get -y install squid3
		cat > /etc/squid3/squid.conf <<END
http_port $PROXY
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl localnet src 10.0.0.0/8
acl localnet src 172.16.0.0/12
acl localnet src 192.168.0.0/16
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/255.255.255.255
http_access allow SSH
http_access allow localnet
http_access allow localhost
http_access deny all
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
END
		IP2="s/xxxxxxxxx/$IP/g";
		sed -i $IP2 /etc/squid3/squid.conf;
		if [[ "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
			service squid3 restart
			/etc/init.d/openvpn restart
			/etc/init.d/nginx restart
		else
			/etc/init.d/squid3 restart
			/etc/init.d/openvpn restart
			/etc/init.d/nginx restart
		fi

	elif [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
		if [[ -e /etc/squid/squid.conf ]]; then
			apt-get -y remove --purge squid
		fi
echo ""
echo -e "\033[0;32m { Install PROXY }  "
echo ""
		apt-get -y install squid
		cat > /etc/squid/squid.conf <<END
http_port $PROXY
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl localnet src 10.0.0.0/8
acl localnet src 172.16.0.0/12
acl localnet src 192.168.0.0/16
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/255.255.255.255
http_access allow SSH
http_access allow localnet
http_access allow localhost
http_access deny all
refresh_pattern ^ftp:           1440    20%     10080
refresh_pattern ^gopher:        1440    0%      1440
refresh_pattern -i (/cgi-bin/|\?) 0     0%      0
refresh_pattern .               0       20%     4320
END
		IP2="s/xxxxxxxxx/$IP/g";
		sed -i $IP2 /etc/squid/squid.conf;
		/etc/init.d/squid restart
		/etc/init.d/openvpn restart
		/etc/init.d/nginx restart
	fi

fi


	wget -O /usr/local/bin/menu "https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/Menu"
	chmod +x /usr/local/bin/menu
	wget -O /usr/local/bin/Auto-Delete-Client "https://raw.githubusercontent.com/MyGatherBk/PURE/master/Auto-Delete-Client"
	chmod +x /usr/local/bin/Auto-Delete-Client 
	apt-get -y install vnstat
	cd /etc/openvpn/easy-rsa/
	./easyrsa build-client-full $CLIENT nopass
	newclient "$CLIENT"
	cp /root/$CLIENT.ovpn /home/vps/public_html/
	rm -f /root/$CLIENT.ovpn
	case $OPENVPNSYSTEM in
		2)
		useradd $Usernames
		echo -e "$Passwords\n$Passwords\n"|passwd $Usernames &> /dev/null
		;;
	esac
	clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
	echo "OpenVPN, Squid Proxy, Nginx .....Install finish."
	echo "IP Server : $IP"
	echo "Port Server : $PORT"
	if [[ "$PROTOCOL" = 'udp' ]]; then
		echo "Protocal : UDP"
	elif [[ "$PROTOCOL" = 'tcp' ]]; then
		echo "Protocal : TCP"
	fi
	echo "Port Nginx : 85"
	echo "IP Proxy : $IP"
	echo "Port Proxy : $PROXY"
	echo ""
	case $OPENVPNSYSTEM in
		1)
		echo "Download My Config : http://$IP:85/$CLIENT.ovpn"
		;;
		2)
		echo "Download Config : http://$IP:85/$CLIENT.ovpn"
		echo ""
		echo "Your Username : $Usernames"
		echo "Your Password : $Passwords"
		echo "Expire : Never"
		;;
		3)
		echo "Download Config : http://$IP:85/$CLIENT.ovpn"
		;;
	esac
	echo ""
	echo ""
	echo "===================================================================="
	echo -e "ติดตั้งสำเร็จ... กรุณาพิมพ์คำสั่ง${GRAY} menu ${NC} เพื่อไปยังขั้นตอนถัดไป"
	echo "===================================================================="
	echo ""
	exit
	
;;
18) # ==================================================================================================================
DATE1=$(vnstat -h | sed -n '16p' | awk '{print $1}')
RX1=$(vnstat -h | sed -n '16p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX1=$(vnstat -h | sed -n '16p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX1=$(echo "scale=2;$RX1 / 1000000" | bc)
CONTX1=$(echo "scale=2;$TX1 / 1000000" | bc)

DATE2=$(vnstat -h | sed -n '17p' | awk '{print $1}')
RX2=$(vnstat -h | sed -n '17p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX2=$(vnstat -h | sed -n '17p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX2=$(echo "scale=2;$RX2 / 1000000" | bc)
CONTX2=$(echo "scale=2;$TX2 / 1000000" | bc)

DATE3=$(vnstat -h | sed -n '18p' | awk '{print $1}')
RX3=$(vnstat -h | sed -n '18p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX3=$(vnstat -h | sed -n '18p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX3=$(echo "scale=2;$RX3 / 1000000" | bc)
CONTX3=$(echo "scale=2;$TX3 / 1000000" | bc)

DATE4=$(vnstat -h | sed -n '19p' | awk '{print $1}')
RX4=$(vnstat -h | sed -n '19p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX4=$(vnstat -h | sed -n '19p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX4=$(echo "scale=2;$RX4 / 1000000" | bc)
CONTX4=$(echo "scale=2;$TX4 / 1000000" | bc)

DATE5=$(vnstat -h | sed -n '20p' | awk '{print $1}')
RX5=$(vnstat -h | sed -n '20p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX5=$(vnstat -h | sed -n '20p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX5=$(echo "scale=2;$RX4 / 1000000" | bc)
CONTX5=$(echo "scale=2;$TX4 / 1000000" | bc)

DATE6=$(vnstat -h | sed -n '21p' | awk '{print $1}')
RX6=$(vnstat -h | sed -n '21p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX6=$(vnstat -h | sed -n '21p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX6=$(echo "scale=2;$RX6 / 1000000" | bc)
CONTX6=$(echo "scale=2;$TX6 / 1000000" | bc)

DATE7=$(vnstat -h | sed -n '22p' | awk '{print $1}')
RX7=$(vnstat -h | sed -n '22p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX7=$(vnstat -h | sed -n '22p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX7=$(echo "scale=2;$RX7 / 1000000" | bc)
CONTX7=$(echo "scale=2;$TX7 / 1000000" | bc)

DATE8=$(vnstat -h | sed -n '23p' | awk '{print $1}')
RX8=$(vnstat -h | sed -n '23p' | awk '{print $2}' | cut -d ',' -f 1-20 --output-delimiter='')
TX8=$(vnstat -h | sed -n '23p' | awk '{print $3}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX8=$(echo "scale=2;$RX8 / 1000000" | bc)
CONTX8=$(echo "scale=2;$TX8 / 1000000" | bc)

DATE9=$(vnstat -h | sed -n '16p' | awk '{print $4}')
RX9=$(vnstat -h | sed -n '16p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX9=$(vnstat -h | sed -n '16p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX9=$(echo "scale=2;$RX9 / 1000000" | bc)
CONTX9=$(echo "scale=2;$TX9 / 1000000" | bc)

DATE10=$(vnstat -h | sed -n '17p' | awk '{print $4}')
RX10=$(vnstat -h | sed -n '17p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX10=$(vnstat -h | sed -n '17p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX10=$(echo "scale=2;$RX10 / 1000000" | bc)
CONTX10=$(echo "scale=2;$TX10 / 1000000" | bc)

DATE11=$(vnstat -h | sed -n '18p' | awk '{print $4}')
RX11=$(vnstat -h | sed -n '18p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX11=$(vnstat -h | sed -n '18p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX11=$(echo "scale=2;$RX11 / 1000000" | bc)
CONTX11=$(echo "scale=2;$TX11 / 1000000" | bc)

DATE12=$(vnstat -h | sed -n '19p' | awk '{print $4}')
RX12=$(vnstat -h | sed -n '19p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX12=$(vnstat -h | sed -n '19p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX12=$(echo "scale=2;$RX12 / 1000000" | bc)
CONTX12=$(echo "scale=2;$TX12 / 1000000" | bc)

DATE13=$(vnstat -h | sed -n '20p' | awk '{print $4}')
RX13=$(vnstat -h | sed -n '20p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX13=$(vnstat -h | sed -n '20p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX13=$(echo "scale=2;$RX13 / 1000000" | bc)
CONTX13=$(echo "scale=2;$TX13 / 1000000" | bc)

DATE14=$(vnstat -h | sed -n '21p' | awk '{print $4}')
RX14=$(vnstat -h | sed -n '21p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX14=$(vnstat -h | sed -n '21p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX14=$(echo "scale=2;$RX14 / 1000000" | bc)
CONTX14=$(echo "scale=2;$TX14 / 1000000" | bc)

DATE15=$(vnstat -h | sed -n '22p' | awk '{print $4}')
RX15=$(vnstat -h | sed -n '22p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX15=$(vnstat -h | sed -n '22p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX15=$(echo "scale=2;$RX15 / 1000000" | bc)
CONTX15=$(echo "scale=2;$TX15 / 1000000" | bc)

DATE16=$(vnstat -h | sed -n '23p' | awk '{print $4}')
RX16=$(vnstat -h | sed -n '23p' | awk '{print $5}' | cut -d ',' -f 1-20 --output-delimiter='')
TX16=$(vnstat -h | sed -n '23p' | awk '{print $6}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX16=$(echo "scale=2;$RX16 / 1000000" | bc)
CONTX16=$(echo "scale=2;$TX16 / 1000000" | bc)

DATE17=$(vnstat -h | sed -n '16p' | awk '{print $7}')
RX17=$(vnstat -h | sed -n '16p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX17=$(vnstat -h | sed -n '16p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX17=$(echo "scale=2;$RX17 / 1000000" | bc)
CONTX17=$(echo "scale=2;$TX17 / 1000000" | bc)

DATE18=$(vnstat -h | sed -n '17p' | awk '{print $7}')
RX18=$(vnstat -h | sed -n '17p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX18=$(vnstat -h | sed -n '17p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX18=$(echo "scale=2;$RX18 / 1000000" | bc)
CONTX18=$(echo "scale=2;$TX18 / 1000000" | bc)

DATE19=$(vnstat -h | sed -n '18p' | awk '{print $7}')
RX19=$(vnstat -h | sed -n '18p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX19=$(vnstat -h | sed -n '18p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX19=$(echo "scale=2;$RX19 / 1000000" | bc)
CONTX19=$(echo "scale=2;$TX19 / 1000000" | bc)

DATE20=$(vnstat -h | sed -n '19p' | awk '{print $7}')
RX20=$(vnstat -h | sed -n '19p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX20=$(vnstat -h | sed -n '19p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX20=$(echo "scale=2;$RX20 / 1000000" | bc)
CONTX20=$(echo "scale=2;$TX20 / 1000000" | bc)

DATE21=$(vnstat -h | sed -n '20p' | awk '{print $7}')
RX21=$(vnstat -h | sed -n '20p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX21=$(vnstat -h | sed -n '20p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX21=$(echo "scale=2;$RX21 / 1000000" | bc)
CONTX21=$(echo "scale=2;$TX21 / 1000000" | bc)

DATE22=$(vnstat -h | sed -n '21p' | awk '{print $7}')
RX22=$(vnstat -h | sed -n '21p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX22=$(vnstat -h | sed -n '21p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX22=$(echo "scale=2;$RX22 / 1000000" | bc)
CONTX22=$(echo "scale=2;$TX22 / 1000000" | bc)

DATE23=$(vnstat -h | sed -n '22p' | awk '{print $7}')
RX23=$(vnstat -h | sed -n '22p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX23=$(vnstat -h | sed -n '22p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX23=$(echo "scale=2;$RX23 / 1000000" | bc)
CONTX23=$(echo "scale=2;$TX23 / 1000000" | bc)

DATE24=$(vnstat -h | sed -n '23p' | awk '{print $7}')
RX24=$(vnstat -h | sed -n '23p' | awk '{print $8}' | cut -d ',' -f 1-20 --output-delimiter='')
TX24=$(vnstat -h | sed -n '23p' | awk '{print $9}' | cut -d ',' -f 1-20 --output-delimiter='')
CONRX24=$(echo "scale=2;$RX24 / 1000000" | bc)
CONTX24=$(echo "scale=2;$TX24 / 1000000" | bc)

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
NOW=`echo -e "${GREEN}เวลาปัจจุบัน${NC}"`
echo ""
echo -e "${GRAY}ตัวเลขรับและส่งข้อมูลที่แสดงจะมีหน่วยวัดปริมาณเป็น Gigabyte ทั้งหมด${NC}"
printf "%-7s %-7s %-10s\n" "เวลา" "รับข้อมูล" "ส่งข้อมูล"
echo ""
printf "%-3s %-6s %-10s\n" "$DATE1" "$CONRX1" "$CONTX1"
printf "%-3s %-6s %-10s\n" "$DATE2" "$CONRX2" "$CONTX2"
printf "%-3s %-6s %-10s\n" "$DATE3" "$CONRX3" "$CONTX3"
printf "%-3s %-6s %-10s\n" "$DATE4" "$CONRX4" "$CONTX4"
printf "%-3s %-6s %-10s\n" "$DATE5" "$CONRX5" "$CONTX5"
printf "%-3s %-6s %-10s\n" "$DATE6" "$CONRX6" "$CONTX6"
printf "%-3s %-6s %-10s\n" "$DATE7" "$CONRX7" "$CONTX7"
printf "%-3s %-6s %-10s\n" "$DATE8" "$CONRX8" "$CONTX8"
printf "%-3s %-6s %-10s\n" "$DATE9" "$CONRX9" "$CONTX9"
printf "%-3s %-6s %-10s\n" "$DATE10" "$CONRX10" "$CONTX10"
printf "%-3s %-6s %-10s\n" "$DATE11" "$CONRX11" "$CONTX11"
printf "%-3s %-6s %-10s\n" "$DATE12" "$CONRX12" "$CONTX12"
printf "%-3s %-6s %-10s\n" "$DATE13" "$CONRX13" "$CONTX13"
printf "%-3s %-6s %-10s\n" "$DATE14" "$CONRX14" "$CONTX14"
printf "%-3s %-6s %-10s\n" "$DATE15" "$CONRX15" "$CONTX15"
printf "%-3s %-6s %-10s\n" "$DATE16" "$CONRX16" "$CONTX16"
printf "%-3s %-6s %-10s\n" "$DATE17" "$CONRX17" "$CONTX17"
printf "%-3s %-6s %-10s\n" "$DATE18" "$CONRX18" "$CONTX18"
printf "%-3s %-6s %-10s\n" "$DATE19" "$CONRX19" "$CONTX19"
printf "%-3s %-6s %-10s\n" "$DATE20" "$CONRX20" "$CONTX20"
printf "%-3s %-6s %-10s\n" "$DATE21" "$CONRX21" "$CONTX21"
printf "%-3s %-6s %-10s\n" "$DATE22" "$CONRX22" "$CONTX22"
printf "%-3s %-6s %-10s\n" "$DATE23" "$CONRX23" "$CONTX23"
printf "%-3s %-6s %-5s %-5s\n" "$DATE24" "$CONRX24" "$CONTX24" "< $NOW"
echo ""
exit

	;;
	
	19) # ==================================================================================================================

clear
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
nano /usr/local/bin/m
exit
	;;
	
	20) # ==================================================================================================================

# Banner
rm /etc/bannerssh
wget -O /etc/bannerssh "https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/issue.net"
echo "Banner /etc/bannerssh" >> /etc/ssh/sshd_config
service ssh restart

	;;
	
	21) # ==================================================================================================================
#!/bin/bash
# Script by : Clrkz
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squid3port="$(cat /etc/squid3/squid.conf | grep -i http_port | awk '{print $2}')"
squidport="$(cat /etc/squid/squid.conf | grep -i http_port | awk '{print $2}')"
nginxport="$(netstat -nlpt | grep -i nginx| grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
clear
clear
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
echo -e "${GREEN}         Port OpenSSH  ${NC}   :  "$opensshport
echo -e "${GREEN}         Port Dropbear${NC}    :  "$dropbearport
echo -e "${GREEN}         Port Squid  ${NC}     :  "$squidport
echo -e "${GREEN}         Port Squid3 ${NC}     :  "$squid3port
echo -e "${GREEN}         Port OpenVPN ${NC}    :  "$openvpnport
echo -e "${GREEN}         Port Nginx ${NC}      :  "$nginxport
echo -e "${NC} "
;;

	22) # ==================================================================================================================
#!/bin/bash
# Script by : Clrkz
rm -f /root/opensshport
rm -f /root/dropbearport
rm -f /root/stunnel4port
rm -f /root/openvpnport
rm -f /root/squidport
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport="$(cat /etc/squid3/squid.conf | grep -i http_port | awk '{print $2}')"
echo $opensshport > /root/opensshport
cat > /root/opensshport <<-END
$opensshport
END
echo $dropbearport > /root/dropbearport
cat > /root/dropbearport <<-END
$dropbearport
END
echo $stunnel4port > /root/stunnel4port
cat > /root/stunnel4port <<-END
$stunnel4port
END
echo $openvpnport > /root/openvpnport
cat > /root/openvpnport <<-END
$openvpnport
END
echo $squidport > /root/squidport
cat > /root/squidport <<-END
$squidport
END

cd
clear
echo -e "\e[0m                                                   "
echo -e "\e[94m[][][]======================================[][][]"
echo -e "\e[0m                                                   "
echo -e "\e[93m                   OpenVPN Port                   "
echo -e "\e[93m                       "$openvpnport
echo -e "\e[0m                                                   "
read -p "       Which Port Should Be Changed? :  " Port
egrep "^$Port" /root/openvpnport >/dev/null
if [ $? -eq 0 ]; then
	read -p "            From Port $Port -> Port " Port_New
	if grep -Fxq $Port_New /root/opensshport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              OpenSSH Port Conflict               "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/dropbearport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              Dropbear Port Conflict              "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/stunnel4port; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              Stunnel4 Port Conflict              "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/squidport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m               Squid3 Port Conflict               "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	Port_Change="s/$Port/$Port_New/g";
	sed -i $Port_Change /etc/openvpn/server.conf
	sed -i $Port_Change /home/vps/public_html/client.ovpn
	sed -i $Port_Change /root/openvpnport
	openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
	echo $openvpnport > /root/openvpnport
	cat > /root/openvpnport <<-END
	$openvpnport
	END
	service openvpn restart
	sleep 4
	openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
	clear
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]"
	echo -e "\e[0m                                                   "
	echo -e "\e[93m           AutoScriptVPS by  MyGatherBK           "
	echo -e "\e[0m                                                   "
	echo -e "\e[93m                   OpenVPN Port                   "
	echo -e "\e[93m                       "$openvpnport
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]\e[0m"

else
	echo -e "\e[0m                                                   "
	echo -e "\e[91m                 Port Doesnt Exit                 "
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]\e[0m"
fi

;;

	23) # ==================================================================================================================
	
#!/bin/bash
#DEV BY PRATYASART THEEJANMART
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16-18    #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi

# IP Address
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
if [ -e '/etc/squid3/squid.txt' ]; then
echo ""
clear
clear
else
echo "" > /etc/squid3/squid.txt
sed -i '/^$/d' /etc/squid3/squid.txt
fi
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
if [ -e '/etc/squid/squid.txt' ]; then
echo ""
clear
clear
else
echo "" > /etc/squid/squid.txt
sed -i '/^$/d' /etc/squid/squid.txt
fi
fi

if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
if [ -e '/etc/squid3/port.txt' ]; then
echo ""
clear
clear
else
echo " ┣ http_port 8080  " > /etc/squid3/port.txt
sed -i '/^$/d' /etc/squid3/squid.txt
fi
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
if [ -e '/etc/squid/port.txt' ]; then
echo ""
clear
clear
else
echo " ┣ http_port 8080  " > /etc/squid/port.txt
sed -i '/^$/d' /etc/squid/squid.txt
fi
fi

IP=$(wget -qO- ipv4.icanhazip.com);
if [[ "$IP" = "" ]]; then
    IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
fi


ok() {
    echo -e '\e[32m'$1'\e[m';
}

die() {
    echo -e '\e[1;35m'$1'\e[m';
}

des() {
    echo -e '\e[1;31m'$1'\e[m'; exit 1;
}
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}           การตั้งค่า Proxy${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo "1. เปิดปิดใช้งานไม่จำกัด IP  "
echo "2. ตั้งค่าไอพี  " 
echo "3. ตั้งค่าพอร์ต  "
 read -p "พิมพ์ตัวเลข  : " zenonnew

if [[ "$zenonnew" = "" ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}            พิมพ์คำสั่งไม่ถูกต้อง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo -e ""
 exit
fi
if [[ "1" = "$zenonnew" ]]; then
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^http_access allow all" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' ]]; then
grep -E "^http_access allow all" /etc/squid/squid.conf >/dev/null
fi
 if [ $? -eq 0 ]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}      สถานะปัจจุบัน Proxy ไม่จำกัด IP${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
read -p "เปลี่ยนเป็น Proxy ใช้ใด้เฉพาะเซิฟร์นี้หรือไม่ Y/n :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
sed -i "s/http_access allow all/http_access allow localhost/g" /etc/squid3/squid.conf
ok "➡ service squid3 restart "
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
sed -i "s/http_access allow all/http_access allow localhost/g" /etc/squid/squid.conf
ok "➡ service squid restart "
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  =================================== ${NC} "
echo -e "${GREEN}      สถานะปัจจุบัน Proxy ใช้ใด้เฉพาะเซิฟร์นี้ ${NC} "
echo -e "\033[1;31m  =================================== ${NC} "
exit
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}     สถานะเปลี่ยนเป็น Proxy ไม่จำกัด IP${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
 else
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================== ${NC} "
echo -e "${GREEN}     สถานะปัจจุบัน Proxy ใช้ใด้เฉพาะเซิฟร์นี้ ${NC} "
echo -e "\033[1;31m  ================================== ${NC} "

read -p "เปลี่ยนเป็น Proxy ไม่จำกัด IP หรือไม่ Y/n :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
sed -i "s/http_access allow localhost/http_access allow all/g" /etc/squid3/squid.conf
ok "➡ service squid3 restart"
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
sed -i "s/http_access allow localhost/http_access allow all/g" /etc/squid/squid.conf
ok "➡ service squid restart"
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  =================================== ${NC} "
echo -e "${GREEN}      สถานะเปลี่ยนเป็น Proxy ใช้ใด้หลาย IP${NC} "
echo -e "\033[1;31m  =================================== ${NC} "
exit
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================== ${NC} "
echo -e "${GREEN}     สถานะปัจจุบัน Proxy ใช้ใด้เฉพาะเซิฟร์นี้ ${NC} "
echo -e "\033[1;31m  ================================== ${NC} "
exit
fi
elif [[ "2" = "$zenonnew" ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}              เลือกใช้คำสั่ง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo  "1. เพิ่มไอพี "
echo  "2. เช็ดไอพี "
echo  "3. ลบไอพี "
 read -p " พิมพ์ตัวเลข : " Selet
 if [[ "$Selet" = "" ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}            โปรดพิมพ์คำสั่ง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi
 if [[ $Selet = 1 ]]; then
 read -p " ## ใส่เลขไอพีที่จะใช้งานพร็อกซี่นี้ : " SERVER_IP
 if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^acl SSH dst $SERVER_IP" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
grep -E "^acl SSH dst $SERVER_IP" /etc/squid/squid.conf >/dev/null
fi
if [ $? -eq 0 ]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}      IP $SERVER_IP มีอยู่ในระบบแล้ว${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
else
read -p "บันทึกการตั้งค่านี้หรือไม่ y/n : " YN
fi
 if [[ n = $YN || N = $YN ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}      $SERVER_IP ไม่ได้ยืนยันการใช้งาน${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit 
 fi


 
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
sed -i "/acl CONNECT method CONNECT/a acl SSH dst xxxxxxxxxx-xxxxxxxxxx\/255.255.255.255" /etc/squid3/squid.conf
sed -i "s/xxxxxxxxxx/$SERVER_IP/g" /etc/squid3/squid.conf
echo " $SERVER_IP " >> /etc/squid3/squid.txt
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
sed -i "/acl CONNECT method CONNECT/a acl SSH dst xxxxxxxxxx-xxxxxxxxxx\/255.255.255.255" /etc/squid/squid.conf
sed -i "s/xxxxxxxxxx/$SERVER_IP/g" /etc/squid/squid.conf
echo " $SERVER_IP " >> /etc/squid/squid.txt
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ===================================== ${NC} "
echo -e "${GREEN}     $SERVER_IP ใช้งานพร็อกซี่เซิฟร์นี้เรียบร้อย${NC} "
echo -e "\033[1;31m  ===================================== ${NC} "
exit 
elif [[ $Selet = 2 ]]; then
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^http_access allow all" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
grep -E "^http_access allow all" /etc/squid/squid.conf >/dev/null
fi
 if [ $? -eq 0 ]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}        สถานะปัจจุบัน Proxy ไม่จำกัด IP${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
else

clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}         ไอพีที่เปิดใช้งานอยู่ปัจจุบัน${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo " $IP  "
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
cat /etc/squid3/squid.txt
echo "########################"
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
cat /etc/squid/squid.txt
echo "########################"
fi
exit
fi
elif [[ $Selet = 3 ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}             ลบไอพีพร็อกซี่้${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo "1. ลบบางไอพี  "
echo "2. รีเซ็ตค่าเดิม  "
read -p "พิมพ์ตัวเลข : " Selet1
if [[ $Selet1 = 1 ]]; then
read -p " ┣ ใส่เลขไอพีที่จะลบ : " SERVER_IP
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^acl SSH dst $SERVER_IP" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
grep -E "^acl SSH dst $SERVER_IP" /etc/squid/squid.conf >/dev/null
fi

if [ $? -eq 0 ]; then
if [[ $SERVER_IP = $IP ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}        ไม่อณุญาตให้ลบไอพีของเซิฟร์นี้${NC} "
echo -e "\033[1;31m  ================================ ${NC} "

 exit
fi
 read -p "       ## แน่ใจว่าต้องการลบไอพี Y/n : " YN
else
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}       ไม่พบ IP $SERVER_IP ในระบบ${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
fi

if [[ $YN = N || $YN = n ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}          ยกเลิกการเปลียนแปลง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi


if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
SERVER_IP2="/$SERVER_IP/d";
sed -i $SERVER_IP2 /etc/squid3/squid.txt
sed -i $SERVER_IP2 /etc/squid3/squid.conf
sed -i '/^$/d' /etc/squid3/squid.txt
sed -i '/^$/d' /etc/squid3/squid.conf
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
SERVER_IP2="/$SERVER_IP/d";
sed -i $SERVER_IP2 /etc/squid/squid.txt
sed -i $SERVER_IP2 /etc/squid/squid.conf
sed -i '/^$/d' /etc/squid/squid.txt
sed -i '/^$/d' /etc/squid/squid.conf
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}           กเลิกการเปลียนแปลง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
elif [[ $Selet1 = 2 ]]; then
read -p " ## แน่ใจว่าต้องการลบไอพีทั้งหมด Y/n : " YN
if [[ $YN = N || $YN = n ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}          ยกเลิกการเปลียนแปลง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
SERVER_IP2="/255.255.255.255/d";
sed -i $SERVER_IP2 /etc/squid3/squid.txt
sed -i $SERVER_IP2 /etc/squid3/squid.conf
sed -i '/^$/d' /etc/squid3/squid.txt
sed -i '/^$/d' /etc/squid3/squid.conf
sed -i "/acl CONNECT method CONNECT/a acl SSH dst xxxxxxxxxx-xxxxxxxxxx\/255.255.255.255" /etc/squid3/squid.conf
sed -i "s/xxxxxxxxxx/$IP/g" /etc/squid3/squid.conf
echo "" > /etc/squid3/squid.txt
sed -i '/^$/d' /etc/squid3/squid.txt
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่... "
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
SERVER_IP2="/255.255.255.255/d";
sed -i $SERVER_IP2 /etc/squid/squid.txt
sed -i $SERVER_IP2 /etc/squid/squid.conf
sed -i '/^$/d' /etc/squid/squid.conf
sed -i "/acl CONNECT method CONNECT/a acl SSH dst xxxxxxxxxx-xxxxxxxxxx\/255.255.255.255" /etc/squid/squid.conf
sed -i "s/xxxxxxxxxx/$IP/g" /etc/squid/squid.conf
echo "" > /etc/squid/squid.txt
sed -i '/^$/d' /etc/squid/squid.txt
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่... "
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}           ลบไอพีทั้งหมด เรียบร้อย ${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
fi
fi
elif [[ "3" = "$truepay" ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}              เลือกใช้คำสั่ง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo  "1. เพิ่มพอร์ต "
echo  "2. เช็ดพอร์ต "
echo  "3. ลบพอร์ต  "
 read -p " พิมพ์ตัวเลข : " Selet
 if [[ "$Selet" = "" ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}             โปรดพิมพ์คำสั่ง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi
 if [[ $Selet = 1 ]]; then
 read -p "ใส่พอร์ตที่จะใช้งานกับพร็อกซี่ : " Port
 if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^http_port $Port" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
grep -E "^http_port $Port" /etc/squid/squid.conf >/dev/null
fi

if [ $? -eq 0 ]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}        Port $Port มีอยู่ในระบบแล้ว${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
else
if [[ $Port = 80 || $Port = 443 || $Port = 22 || $Port = 143 || $Port = 444 || $Port = 10000 || $Port = 4468 || $Port = 9000 || $Port = 1 || $Port = 2 || $Port = 3 || $Port = 4 || $Port = 5 || $Port = 6 || $Port = 7 || $Port = 8 || $Port = 9 || $Port = 0 || $Port = 21 || $Port = 70 || $Port = 210 || $Port = 1025 || $Port = 65535 || $Port = 280 || $Port = 488 || $Port = 591 || $Port = 777 || $Port = 255 || $Port = 10 || $Port = 172 || $Port = 127 || $Port = 192 || $Port = 32 || $Port = 12 || $Port = 16 || $Port = 1440 || $Port = 20 || $Port = 10080 || $Port = 4320 || $Port = 3128 || $Port = 5555 ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}      Port $Port ไม่สามารถเปิดใช้งานได้${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
fi
read -p "  ## บันทึกการตั้งค่านี้หรือไม่ y/n : " YN
fi
 if [[ n = $YN || N = $YN ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}        $Port ไม่ได้ยืนยันการใช้งาน${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit 
 fi


 
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
sed -i "/http_port 8080/a http_port xxxx" /etc/squid3/squid.conf
sed -i "s/xxxx/$Port/g" /etc/squid3/squid.conf
echo "  http_port $Port " >> /etc/squid3/port.txt
echo "  กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
sed -i "/http_port 8080/a http_port xxxx" /etc/squid/squid.conf
sed -i "s/xxxx/$Port/g" /etc/squid/squid.conf
echo "  http_port $Port  " >> /etc/squid/port.txt
echo "  กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}         Port $Port พร้อมใช้งาน${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit 
elif [[ $Selet = 2 ]]; then

clear
clear
echo  " ############# พอร์ตที่เปิดใช้งานอยู่ปัจจุบัน ############# "
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
cat /etc/squid3/port.txt
echo " ############# "
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
cat /etc/squid/port.txt
echo " ############# "
exit
fi

elif [[ $Selet = 3 ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}            ลบพอร์ตพร็อกซี${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
echo "        ## 1. ลบบางพอร์ต  "
echo "        ## 2. รีเซ็ตค่าเดิม  "
read -p "      ## พิมพ์ตัวเลข : " Selet1
if [[ $Selet1 = 1 ]]; then
read -p " ## ใส่เลขพอร์ตที่จะลบ : " Port
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
grep -E "^http_port $Port" /etc/squid3/squid.conf >/dev/null
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
grep -E "^http_port $Port" /etc/squid/squid.conf >/dev/null
fi
if [ $? -eq 0 ]; then
if [[ $Port = 8080 ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}        ไม่อณุญาตให้ลบพอร์ต 8080${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi
 read -p "แน่ใจว่าต้องการลบพอร์ต Y/n : " YN
else
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}         ไม่พบ Port $Port ในระบบ${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
fi


if [[ $YN = N || $YN = n ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}          ยกเลิกการเปลียนแปลง${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi

if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
SERVER_IP2="/$Port/d";
sed -i $SERVER_IP2 /etc/squid3/port.txt
sed -i $SERVER_IP2 /etc/squid3/squid.conf
sed -i '/^$/d' /etc/squid3/port.txt
sed -i '/^$/d' /etc/squid3/squid.conf
echo " กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่..."
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
SERVER_IP2="/$Port/d";
sed -i $SERVER_IP2 /etc/squid/port.txt
sed -i $SERVER_IP2 /etc/squid/squid.conf
sed -i '/^$/d' /etc/squid/port.txt
sed -i '/^$/d' /etc/squid/squid.conf
echo " กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่... "
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}         ลบพอร์ต $Port เรียบร้อย${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
elif [[ $Selet1 = 2 ]]; then
read -p " ## แน่ใจว่าต้องรีเซ็ตค่าเดิม Y/n : " YN
if [[ $YN = N || $YN = n ]]; then
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}                ยกเลิกการรีเซ็ต    ${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
 exit
fi
if [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
SERVER_IP2="/http_port/d";
sed -i $SERVER_IP2 /etc/squid3/port.txt
sed -i $SERVER_IP2 /etc/squid3/squid.conf
sed -i '/^$/d' /etc/squid3/port.txt
sed -i '/^$/d' /etc/squid3/squid.conf
sed -i "/http_access allow SSH/a http_port 8080" /etc/squid3/squid.conf
echo " http_port 8080 " > /etc/squid3/port.txt
sed -i '/^$/d' /etc/squid3/port.txt
echo " ╰ กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่... "
service squid3 restart -q > /dev/null 2>&1
elif [[ "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="18.4"' ]]; then
SERVER_IP2="/http_port/d";
sed -i $SERVER_IP2 /etc/squid/port.txt
sed -i $SERVER_IP2 /etc/squid/squid.conf
sed -i '/^$/d' /etc/squid/squid.conf
sed -i "/http_access allow SSH/a http_port 8080" /etc/squid/squid.conf
echo " http_port 8080 " > /etc/squid/port.txt
sed -i '/^$/d' /etc/squid/port.txt
echo " กำลังเปิดใช้งานตั้งค่าใหม่ รอสัครู่... "
service squid restart -q > /dev/null 2>&1
fi
clear
clear
echo ""
echo ""
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "\033[1;31m  #      -----------About Us------------         #    "
echo -e "\033[1;31m  #       OS  Debian 8-9  OS  Ubuntu 14-16       #    "
echo -e "\033[1;31m  #               { VPN / SSH }                  #    "
echo -e "\033[1;31m  #         BY : Pirakit Khawpleum               #    "
echo -e "\033[1;31m  #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "\033[1;31m  #                                              #    "
echo -e "\033[1;31m  #       Truemoney Wallet : 096-746-2978        #    "
echo -e "\033[1;31m  =============== OS-32 & 64-bit =================    "
echo -e "\033[1;36m  ไอพีเซิฟ:$IP "
echo -e "\033[0m       "
echo ""
echo -e "\033[1;31m  ================================ ${NC} "
echo -e "${GREEN}         รีเซ็ตพอร์ค่าเดิมเรียบร้อย${NC} "
echo -e "\033[1;31m  ================================ ${NC} "
exit
fi
fi
fi
exit
	;;
	
	24) # ==================================================================================================================
	clear
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
if [[ "$VERSION_ID" = 'VERSION_ID="9"' || "$VERSION_ID" = 'VERSION_ID="16.04"' || "$VERSION_ID" = 'VERSION_ID="18.04"' ]]; then
	nano /etc/squid/squid.conf
	service squid restart
	exit
elif [[ "$VERSION_ID" = 'VERSION_ID="7"' || "$VERSION_ID" = 'VERSION_ID="8"' || "$VERSION_ID" = 'VERSION_ID="14.04"' ]]; then
	nano /etc/squid3/squid.conf
	service squid3 restart
	exit
fi
	;;
	
	25) # ==================================================================================================================
	clear
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
nano /etc/ssh/sshd_config
service ssh restart
exit
;;

	26) # ==================================================================================================================

clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo -e "แก้ไขคอนฟิกต่างๆในระบบ ${GRAY}MyGatherBK-VPN${NC}"
echo ""
echo -e "|${GRAY}1${NC}| OPENVPN ไฟล์ต้นแบบการสร้างคอนฟิก"
echo -e "|${GRAY}2${NC}| OPENVPN ไฟล์ข้อมูลเซิฟเวอร์"
echo ""
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " EDIT

case $EDIT in

	1)
nano /etc/openvpn/client-common.txt
exit
	;;
	2)
nano /etc/openvpn/server.conf
exit
	;;

esac

	;;
	
	
	27) # ==================================================================================================================
apt-get -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=80/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109 -p 110"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
service ssh restart
service dropbear restart

	;;
	
	28) # ==================================================================================================================
#!/bin/bash
# Script by : Clrkz
rm -f /root/opensshport
rm -f /root/dropbearport
rm -f /root/stunnel4port
rm -f /root/openvpnport
rm -f /root/squidport
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
openvpnport="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport="$(cat /etc/squid3/squid.conf | grep -i http_port | awk '{print $2}')"
echo $opensshport > /root/opensshport
cat > /root/opensshport <<-END
$opensshport
END
echo $dropbearport > /root/dropbearport
cat > /root/dropbearport <<-END
$dropbearport
END
echo $stunnel4port > /root/stunnel4port
cat > /root/stunnel4port <<-END
$stunnel4port
END
echo $openvpnport > /root/openvpnport
cat > /root/openvpnport <<-END
$openvpnport
END
echo $squidport > /root/squidport
cat > /root/squidport <<-END
$squidport
END

cd
clear
echo -e "\e[0m                                                   "
echo -e "\e[94m[][][]======================================[][][]"
echo -e "\e[0m                                                   "
echo -e "\e[93m                  Dropbear  Ports                 "
echo -e "\e[93m                   "$dropbearport
echo -e "\e[0m                                                   "
read -p "       Which Port Should Be Changed? :  " Port
egrep "^$Port" /root/dropbearport >/dev/null
if [ $? -eq 0 ]; then
	read -p "            From Port $Port -> Port " Port_New
	if grep -Fxq $Port_New /root/opensshport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              OpenSSH Port Conflict              "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/stunnel4port; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              Stunnel4 Port Conflict              "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/openvpnport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m              Openvpn Port Conflict               "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	if grep -Fxq $Port_New /root/squidport; then
		echo -e "\e[0m                                                   "
		echo -e "\e[91m               Squid3 Port Conflict               "
		echo -e "\e[91m              Port Is Already In Use              "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
	fi
	Port_Change="s/$Port/$Port_New/g";
	sed -i $Port_Change /etc/default/dropbear

	service dropbear restart > /dev/null
	rm -f /root/dropbear
	dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
	clear
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]"
	echo -e "\e[0m                                                   "
	echo -e "\e[93m           AutoScriptVPS by  Clrkz           "
	echo -e "\e[0m                                                   "
	echo -e "\e[93m                  Dropbear  Ports                 "
	echo -e "\e[93m                   "$dropbearport
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]\e[0m"

else
	clear
	echo -e "\e[0m                                                   "
	echo -e "\e[91m                 Port Doesnt Exit                 "
	echo -e "\e[0m                                                   "
	echo -e "\e[94m[][][]======================================[][][]\e[0m"
fi

	;;

	29) # ==================================================================================================================

#!/bin/bash
		clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		service openvpn restart
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]"
		echo -e "\e[0m                                                   "
		echo -e "\e[93m            OpenVPN Service Restarted             "
		echo -e "\e[0m                                                   "
		echo -e "\e[94m[][][]======================================[][][]\e[0m"
		exit
		;;
	
	
		30) # ==================================================================================================================

#!/bin/bash
clear
echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""

if [ -e "/var/log/auth.log" ]; then
        LOG="/var/log/auth.log";
fi
if [ -e "/var/log/secure" ]; then
        LOG="/var/log/secure";
fi
                
data=( `ps aux | grep -i dropbear | awk '{print $2}'`);
echo "-----=[ Dropbear User Login ]=-----";
echo "ID  |  Username  |  IP Address";
echo "-------------------------------------";
cat $LOG | grep -i dropbear | grep -i "Password auth succeeded" > /tmp/login-db.txt;
for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "dropbear\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $10}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $12}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
                fi
done
echo " "
echo "-----=[ OpenSSH User Login ]=-----";
echo "ID  |  Username  |  IP Address";
echo "-------------------------------------";
cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/login-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "sshd\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $9}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
                echo "$PID - $USER - $IP";
        fi
done
if [ -f "/etc/openvpn/openvpn-status.log" ]; then
        line=`cat /etc/openvpn/openvpn-status.log | wc -l`
        a=$((3+((line-8)/2)))
        b=$(((line-8)/2))
        echo " "
        echo "-----=[ OpenVPN User Login ]=-----";
        echo "Username  |  IP Address  |  Connected Since";
        echo "-------------------------------------";
        cat /etc/openvpn/openvpn-status.log | head -n $a | tail -n $b | cut -d "," -f 1,2,5 | sed -e 's/,/   /g' > /tmp/vpn-login-db.txt
        cat /tmp/vpn-login-db.txt
fi

echo " "
echo " "

	;;
	
		31) # ==================================================================================================================

		clear
		echo ""
echo ""
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${RED} #        AUTOSCRIPT CREATED BY PIRAKIT         #    "
echo -e "${RED} #      -----------About Us------------         #    "
echo -e "${RED} #    OS  DEBIAN 7-8-9  OS  UBUNTU 14-16-18     #    "
echo -e "${RED} #       Truemoney Wallet : 096-746-2978        #    "
echo -e "${RED} #               { VPN / SSH }                  #    "
echo -e "${RED} #         BY : Pirakit Khawpleum               #    "
echo -e "${RED} #    FB : https://m.me/pirakrit.khawplum       #    "
echo -e "${RED} =============== OS-32 & 64-bit =================    "
echo -e "${GREEN} ไอพีเซิฟ: $IP "
echo -e "${NC} "
echo ""
		reboot
		exit
	;;
	
	
	00) # ==================================================================================================================

cd /usr/local/bin
wget -q -O m "https://raw.githubusercontent.com/MyGatherBk/MyAuto/master/Menu"
chmod +x /usr/local/bin/m
m

	;;

esac
