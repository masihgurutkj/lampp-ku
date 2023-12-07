# LEMPEPE 

A. [ docker-compose.yaml ]

Lampp (PHP7.4-Apache, MySQL5.6 dam PHPMyAdmin) Versi PC

Persiapan
1. Web Server
   - Port: 7070 -> 80 [ mengarah ke port 80 ]
   - Port: 7022 -> 22 [ mengarah ke port 22 - ssh ]
2. MySQL Server / Login PHPMyAdmin
   - Root Username/Pass [ root/password ]
   - User Username/Pass [ mysql/password ]
3. SSH Server
   - User Username/Pass [ root/1 ]
4. apt update && apt -y install nano git     ## Persiapkan paket git
5. mkdir -p ~/docker/     ##  Siapkan direktori baru

Instalasi
1. git clone https://github.com/otnamrehus/lampp-ku.git    ## Download docker-compose
2. docker-composer -p 'lamppku' -d --build  ## Jalankan perintah docker dengan docker-compose
3. docker-composer -p 'lamppku' stop   ## hentikan container
4. docker-composer -p 'lamppku' start  ## jalankan container 
5. docker-composer -p 'lamppku' down  ## hentikan sekaligus hapus container
6. zerotier-cli join 565799d8f6bdd3c d  ## Koneksi ke VPN  (Tambahan service [zerotier-one] sebagai Tunneling , karena telah terinstall sebelumnya)

Running
1. http://ipaddress:7070   ##  Web Server (Via Browser)   
2. http://ipaddress:7171   ##  PHPMyAdmin (Via Browser)   
3. sudo ssh -p 7022 root@ip_address   ### Remote Server [SSH]  (Via Terminal)
4. sudo sftp -P 7022 root@ip_address  ### Remote Server [SFTP]  (Via Terminal)



B. [ docker-compose_[php7.4_mariadb_phpmyadmin].yaml ]

Lampp (PHP7.4-Apache, Mariadb dam PHPMyAdmin) Versi PC
+ Webserver1
   - Port: 7001 -> 80 [ mengarah ke port 80 ]
   - Port: 7021 -> 22 [ mengarah ke port 22 - ssh ]
+ Webserver2
   - Port: 7002 -> 80 [ mengarah ke port 80 ]
   - Port: 7022 -> 22 [ mengarah ke port 22 - ssh ]

1. git clone https://github.com/otnamrehus/lampp-ku.git ## Download docker-compose
2. Rename di Lokal Server menjadi docker-compose.yaml
3. Jalankan perintah: chmod +x menu-server.sh && ./menu-server.sh
4. Jalankan di browser
   - http://ipaddress:7001   ##  Web Server 1 (Via Browser)
   - http://ipaddress:7002   ##  Web Server 2 (Via Browser)
   - http://ipaddress:7070   ##  PHPMyAdmin (Via Browser)
5. Jalankan di Terminal
   Webserver 1
     - sudo ssh -p 7021 root@ip_address   ### Remote Server [SSH]  (Via Terminal)
     - sudo sftp -P 7021 root@ip_address  ### Remote Server [SFTP]  (Via Terminal)
   Webserver 2
     - sudo ssh -p 7022 root@ip_address   ### Remote Server [SSH]  (Via Terminal)
     - sudo sftp -P 7022 root@ip_address  ### Remote Server [SFTP]  (Via Terminal)
   MySQL Server 
     - sudo ssh -p 7023 root@ip_address   ### Remote Server [SSH]  (Via Terminal)
     - sudo sftp -P 7023 root@ip_address  ### Remote Server [SFTP]  (Via Terminal)
