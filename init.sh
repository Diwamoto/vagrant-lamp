
# 上ディレクトリにdocker-lampをcloneしてシンボリックリンクを貼る
cd ..
git clone https://github.com/Diwamoto/docker-lamp.git
cd vagrant-lamp
ln -s ../docker-lamp docker-lamp

# ローカルホストのhttps化
cd docker-lamp/web/ssl/
./initssl.sh

# 設定ファイルの準備
cd ../php7
cp httpd.conf.default httpd.conf
cp php.ini.default php.ini

# dnsmasqの準備
brew install dnsmasq
sudo touch /etc/resolver/localhost
sudo echo 'nameserver 127.0.0.1' > /etc/resolver/localhost
sudo echo 'address=/localhost/127.0.0.1' >> /usr/local/etc/dnsmasq.conf
brew services restart dnsmasq

# vagrantを起動
cd ../../..
cp Vagrantfile.default Vagrantfile
vagrant up


