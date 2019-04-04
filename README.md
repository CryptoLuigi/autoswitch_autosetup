# Automatic installation of Autoswitch on HiveOS
---
## By: CryptoLuigi

### This script is designed to automatically install the autoswitching program for nicehash.
#### Click link below to learn more about Profit Trailer

https://profittrailer.com/pt/cryptoluigi/

When running this script, the script will ask for your HiveOS API keys.
Then the program will ask for the hashrate benchmarks for each support algorithm
The data will be entered into autoswitch conf file
Once autoswitch is configured the script will ask the user if they want to start the program.

```
Further documentation can be found on the HiveOS forum
 ```
 
 
For a guided installation enter the following 3 commands
```
wget https://raw.githubusercontent.com/CryptoLuigi/autoswitch_autosetup/master/autoswitch_autosetup.sh

chmod +x ./autoswitch_autosetup.sh

./autoswitch_autosetup.sh
 ```
 
For automatic installation enter all the required arguments 
```
Example usage

./autoswitch_autosetup APIkey(1) keccak(2) nist5(3) neoscrypt(4) lyra2re(5) lyra2rev2(6) ethash(7) skunk(8) cryptonightv7(9) cryptonightheavy(10) lyra2z(11) x16r(12) cryptonightv8(13) mtp(14) cuckaroo29(15) cryptonightr(16) cuckaroo31(17) lyra2rev3(18) zhash(19) beam(20) y(21)

./autoswitch_autosetup dfgdfgfdsg 0 278 0 0 0 0 195 0 0 0 110 0 15 33 0 0 0 0 0 

Last [y/n] is if you want to start up autoswitch now
 ```
 