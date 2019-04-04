#!/bin/bash
#Script is for the automatic installation for autoswitch nicehash on HiveOS
#Script By CryptoLuigi (Michael Ruperto)
#Date: 2019-03-20
#Updated: 2019-04-04

function applyproperties()
{
	echo "$FARM_ID" | sed -i -e"s/^FARM_ID=.*/FARM_ID=$FARM_ID/" /hive-config/autoswitch.conf
	echo "$TOKEN" | sed -i -e"s/^TOKEN=.*/TOKEN=\"$TOKEN\"/" /hive-config/autoswitch.conf
}
function applyhashate()
{
	echo "$keccak" | sed -i -e"s/^\"Keccak\":.*/\"Keccak\":$keccak/" /hive-config/autoswitch.conf
	echo "$nist5" | sed -i -e"s/^\"Nist5\":.*/\"Nist5\":$nist5/" /hive-config/autoswitch.conf
	echo "$neoscrypt" | sed -i -e"s/^\"NeoScrypt\":.*/\"NeoScrypt\":$neoscrypt/" /hive-config/autoswitch.conf
	echo "$keccak" | sed -i -e"s/^\"Keccak\":.*/\"Keccak\":$keccak/" /hive-config/autoswitch.conf
	echo "$lyra2re" | sed -i -e"s/^\"Lyra2RE\":.*/\"Lyra2RE\":$lyra2re/" /hive-config/autoswitch.conf
	echo "$lyra2rev2" | sed -i -e"s/^\"Lyra2REv2\":.*/\"Lyra2REv2\":$lyra2rev2/" /hive-config/autoswitch.conf
	echo "$ethash" | sed -i -e"s/^\"Ethash\":.*/\"Ethash\":$ethash/" /hive-config/autoswitch.conf
	echo "$skunk" | sed -i -e"s/^\"Skunk\":.*/\"Skunk\":$skunk/" /hive-config/autoswitch.conf
	#echo "$cryptonightv7" | sed -i -e"s/^\"CryptoNightV7\":.*/\"CryptoNightV7\":$cryptonightv7/" /hive-config/autoswitch.conf
	echo "$cryptonightr" | sed -i -e"s/^\"CryptoNightR\":.*/\"CryptoNightR\":$cryptonightr/" /hive-config/autoswitch.conf
	echo "$cryptonightv8" | sed -i -e"s/^\"CryptoNightV8\":.*/\"CryptoNightV8\":$cryptonightv8/" /hive-config/autoswitch.conf
	echo "$cryptonightheavy" | sed -i -e"s/^\"CryptoNightHeavy\":.*/\"CryptoNightHeavy\":$cryptonightheavy/" /hive-config/autoswitch.conf
	echo "$lyra2z" | sed -i -e"s/^\"Lyra2Z\":.*/\"Lyra2Z\":$lyra2z/" /hive-config/autoswitch.conf
	echo "$lyra2rev3" | sed -i -e"s/^\"Lyra2rev3\":.*/\"Lyra2rev3\":$lyra2rev3/" /hive-config/autoswitch.conf
	echo "$x16r" | sed -i -e"s/^\"X16r\":.*/\"X16r\":$x16r/" /hive-config/autoswitch.conf
	echo "$mtp" | sed -i -e"s/^\"MTP\":.*/\"MTP\":$mtp/" /hive-config/autoswitch.conf
	echo "$cuckaroo29" | sed -i -e"s/^\"Grin29\":.*/\"Grin29\":$cuckaroo29/" /hive-config/autoswitch.conf
	echo "$cuckaroo31" | sed -i -e"s/^\"Grin31\":.*/\"Grin31\":$cuckaroo31/" /hive-config/autoswitch.conf
	echo "$zhash" | sed -i -e"s/^\"Zhash\":.*/\"Zhash\":$zhash/" /hive-config/autoswitch.conf
	echo "$beam" | sed -i -e"s/^\"Beam\":.*/\"Beam\":$beam/" /hive-config/autoswitch.conf
}


if [[ $# -eq 0 ]]; then
	echo "proir to installing Nicehash autoswitch, it is recommended you add all required flightsheets"
	echo "Further documentation can be found on HiveOs Forum"
	echo
	read -p "Do you want to install autoswitch for Nicehash?(y/n)" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		curl https://raw.githubusercontent.com/lexandr0s/autoswitch/master/as-setup.sh | bash
	fi
	read -p "Do you want to configure it automatically now?(y/n)" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		. /hive-config/rig.conf
		echo "$FARM_ID" | sed -i -e"s/^FARM_ID=.*/FARM_ID=$FARM_ID/" /hive-config/autoswitch.conf
		echo
		echo "Farm ID was automatically entered."
		read -p "Do you have your API Token?(y/n)" -n 1 -r
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			echo
			read -p "Enter your API Token: " TOKEN
			echo "$TOKEN" | sed -i -e"s/^TOKEN=.*/TOKEN=\"$TOKEN\"/" /hive-config/autoswitch.conf
		fi
	fi
	read -p "Do you know the hashrates of the algos you want to mine?(y/n)" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		read -p "What is your Keccak Hashrate MHs? (0 for disable):" keccak
		read -p "What is your Nist5 Hashrate MHs? (0 for disable):" nist5
		read -p "What is your NeoScrypt Hashrate MHs? (0 for disable):" neoscrypt
		read -p "What is your Lyra2RE Hashrate MHs? (0 for disable):" lyra2re
		read -p "What is your Lyra2REv2 Hashrate MHs? (0 for disable):" lyra2rev2
		read -p "What is your DaggerHashimoto Hashrate MHs? (0 for disable):" ethash
		read -p "What is your Skunk Hashrate MHs? (0 for disable):" skunk
		#read -p "What is your CryptoNightV7 Hashrate kHs? (0 for disable):" cryptonightv7
		read -p "What is your CryptoNightHeavy Hashrate kHs? (0 for disable):" cryptonightheavy
		read -p "What is your Lyra2Z Hashrate MHs? (0 for disable):" lyra2z
		read -p "What is your X16r Hashrate MHs? (0 for disable):" x16r
		read -p "What is your CryptoNightV8 Hashrate kHs? (0 for disable):" cryptonightv8
		read -p "What is your MTP Hashrate MHs? (0 for disable):" mtp
		read -p "What is your Cuckaroo29 Hashrate Hs? (0 for disable):" cuckaroo29
		read -p "What is your CryptoNightR Hashrate kHs? (0 for disable):" cryptonightr
		read -p "What is your Cuckaroo31 Hashrate Hs? (0 for disable):" cuckaroo31
		read -p "What is your Lyra2REv3 Hashrate MHs? (0 for disable):" lyra2rev3
		read -p "What is your Zhash Hashrate Hs? (0 for disable):" zhash
		read -p "What is your Beam Hashrate Hs? (0 for disable):" beam
		applyhashate
	fi
	
	read -p "Do you want to start Nicehash autoswitch?(y/n)" -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		autoswitch start

	fi
	echo
	echo "Installation of Nicehash Autoswitch is complete."
fi

if [[ $# -gt 0 ]]; then
	if [[ ${#1} -gt 1 ]]; then
		curl https://raw.githubusercontent.com/lexandr0s/autoswitch/master/as-setup.sh | bash
		TOKEN=$1
		. /hive-config/rig.conf
		applyproperties
	else
		echo "Argument 1 must be an APIkey"
		exit
	fi
	
	if [[ $2 =~ ^[0-9]+$ ]]; then
		keccak=$2	
	else
		echo "Argument 2 must be an Keccak Hashrate MHs"
		exit
	fi
	
	if [[ $3 =~ ^[0-9]+$ ]]; then
		nist5=$3		
	else
		echo "Argument 3 must be an Nist5 Hashrate MHs"
		exit
	fi
	if [[ $4 =~ ^[0-9]+$ ]]; then
		neoscrypt=$4			
	else
		echo "Argument 4 must be an NeoScrypt Hashrate MHs"
		exit
	fi
	if [[ $5 =~ ^[0-9]+$ ]]; then
		lyra2re=$5				
	else
		echo "Argument 5 must be an Lyra2RE Hashrate MHs"
		exit
	fi
	if [[ $6 =~ ^[0-9]+$ ]]; then
		lyra2rev2=$6					
	else
		echo "Argument 6 must be an Lyra2REv2 Hashrate MHs"
		exit
	fi
	if [[ $7 =~ ^[0-9]+$ ]]; then
		ethash=$7				
	else
		echo "Argument 7 must be an Ethash Hashrate MHS"
		exit
	fi
	if [[ $8 =~ ^[0-9]+$ ]]; then
		skunk=$8				
	else
		echo "Argument 8 must be an Skunk Hashrate MHS"
	exit
	fi
	if [[ $9 =~ ^[0-9]+$ ]]; then
		cryptonightv7=$9				
	else
		echo "Argument 9 must be an CryptoNightV7 Hashrate kHS"
		exit
	fi
	if [[ $10 =~ ^[0-9]+$ ]]; then
		cryptonightheavy=$10				
	else
		echo "Argument 10 must be an CryptoNightHeavy Hashrate MHS"
		exit
	fi
	if [[ $11 =~ ^[0-9]+$ ]]; then
		lyra2z=$11				
	else
		echo "Argument 11 must be an Lyra2Z Hashrate MHS"
		exit
	fi
	if [[ $12 =~ ^[0-9]+$ ]]; then
		x16r=$12				
	else
		echo "Argument 12 must be an X16r Hashrate MHS"
		exit
	fi
	if [[ $13 =~ ^[0-9]+$ ]]; then
		cryptonightv8=$13				
	else
		echo "Argument 13 must be an CryptoNightV8 Hashrate MHS"
		exit
	fi
	if [[ $14 =~ ^[0-9]+$ ]]; then
		mtp=$14				
	else
		echo "Argument 14 must be an MTP Hashrate MHS"
		exit
	fi
	if [[ $15 =~ ^[0-9]+$ ]]; then
		cuckaroo29=$15				
	else
		echo "Argument 15 must be an Cuckaroo29 Hashrate HS"
		exit
	fi
	if [[ $16 =~ ^[0-9]+$ ]]; then
		cryptonightr=$16				
	else
		echo "Argument 16 must be an CryptoNightV8 Hashrate MHS"
		exit
	fi
	if [[ $17 =~ ^[0-9]+$ ]]; then
		cuckaroo31=$17				
	else
		echo "Argument 17 must be an Cuckaroo31 Hashrate HS"
		exit
	fi
	if [[ $18 =~ ^[0-9]+$ ]]; then
		lyra2rev3=$18				
	else
		echo "Argument 18 must be an Lyra2REv3 Hashrate MHS"
		exit
	fi
	if [[ $19 =~ ^[0-9]+$ ]]; then
		zhash=$19				
	else
		echo "Argument 19 must be an Zhash Hashrate HS"
		exit
	fi
	if [[ $20 =~ ^[0-9]+$ ]]; then
		beam=$20				
	else
		echo "Argument 20 must be an Beam Hashrate HS"
		exit
	fi
	if [[ $21 =~ ^[Yy]$ ]]; then
		applyhashate
		autoswitch start
	elif [[ $21 =~ ^[Nn]$ ]]; then
		applyhashate
		echo "Autoswitch not started"
	else
	echo "For argument 21 please select y/n"
	exit
fi
fi
