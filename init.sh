# サブモジュールの準備
git submodule update -i
git submodule update --remote
# vagrantfileの準備
cp Vagrantfile.default Vagrantfile
# 設定ファイルの準備
cd docker-lamp/web/php7
cp httpd.conf.default httpd.conf
cp php.ini.default php.ini
# vagrantを起動
cd ../..
vagrant up

# dnsmasqの準備
brew install dnsmasq
touch /etc/resolver/localhost
echo 'nameserver 127.0.0.1' > /etc/resolver/localhost
brew services restart dnsmasq
