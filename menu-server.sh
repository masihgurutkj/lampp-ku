####################       BASH MENU STACK SERVER      ################# 
#!/bin/bash
clear
#echo "+++++++++++++++++++++++++++++++++++++++++"
echo "STACK DOCKER SERVER "
echo "::::::::::::::::::"
echo "s - Jalankan Container [Mode Listing Proses]"
echo "------------------"
echo "ss - Jalankan Container [Mode Senyap] "
echo "------------------"
echo "e - Hapus Container "
echo "::::::::::::::::::"
echo "1 - Aktifkan "
echo "------------------"
echo "0 - Non Aktifkan "
echo "::::::::::::::::::"

echo " "

read moodle;
case $moodle in
  s) docker-compose -p 'lamppku' up --build;;
  s) docker-compose -p 'lamppku' up -d --build;;
  e) docker-compose -p 'lamppku' down;;
  1) docker-compose -p 'lamppku' start;;
  0) docker-compose -p 'lamppku' stop;;
  *) clear && echo "Keluar dari Pilihan Service Stack Docker";;
esac 
####################       BASH MENU STACK SERVER      ################# 
