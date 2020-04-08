#!/system/xbin/bash
clear
cd module
biru='\033[34;1m'
hijau='\033[32;1m'
ungu='\033[35;1m'
krem='\033[36;1m'
merah='\033[31;1m'
putih='\033[37;1m'
kuning='\033[33;1m'

sh title.sh
echo ""
echo ""
echo $hijau "  File index.html harus ada di folder module\n"
echo $kuning "	1. Buat Sc Deface (Apabila belum mempunyai script)"
echo $kuning "	2. Langsung Upload Script"
echo $kuning "	3. List Web Vuln Webdav"
echo $kuning "	0. keluar"
echo $biru
read -p "DGC-DAV >>> "  pilih

if [ $pilih = 1 ]
	then
	sh title.sh
	echo ""
	echo $hijau "	Create Deface Script"
	python2 createsc.py
	sh DGC-DAV.sh
elif [ $pilih = 2 ]
	then
	sh up.sh
	sh DGC-DAV.sh
elif [ $pilih = 3 ]
	then
	sh list.sh
elif [ $pilih = 0 ]
	then
	echo $krem "\nThanks For Using This Tool!\n"
	sleep 1
	exit
	exit
	exit
else
	clear
	echo $merah "\n[ Gak ada pilihannya asuuu.. ]\n"
	echo $kuning
	read -p "[ Kembali ]" back
	cd ..
	sh DGC-DAV.sh
fi
