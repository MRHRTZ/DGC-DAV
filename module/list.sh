#!usr/xbin bash

biru='\033[34;1m'
hijau='\033[32;1m'
ungu='\033[35;1m'
krem='\033[36;1m'
merah='\033[31;1m'
putih='\033[37;1m'
kuning='\033[33;1m'

sh title.sh
echo $putih
cat list.txt
echo $biru
echo ""
read -p "[ Kembali ]" back
cd ..
sh DGC-DAV.sh

