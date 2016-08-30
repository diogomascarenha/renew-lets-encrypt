# renew-lets-encrypt
Shell script to renew let's encrypt certificate

* Clone "letsencrypt/letsencrypt" to your repository
```
cd /opt/
git clone https://github.com/letsencrypt/letsencrypt
cd letsencrypt
chmod +x letsencrypt-auto
```

* Clone "diogomascarenha/renew-lets-encrypt" to your server
```
cd /opt/
git clone https://github.com/diogomascarenha/renew-lets-encrypt.git
cd renew-lets-encrypt
chmod +x renew_lets_encrypt.sh
```

* Add script to execute 1x a day at 01:00 AM on CRON
```
crontab -e

Add the line below

0 1 * * * /opt/renew-lets-encrypt/renew_lets_encrypt.sh
```

* Restart CRON service
```
service cron restart
```
