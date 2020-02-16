# vagrant-lamp
vagrantを使ってdocker for macのファイルioが遅い問題を解決したものになります。
イメージにはdocker用の超軽量osであるailispaw/bargeを使用しています。
もうdocker-syncでファイルが更新されない謎とはおさらばです。

## 利用方法
自分のプロジェクトフォルダと同階層にcloneしてきます。
Vagrantfile.defaultをVagrantfileにリネームしてください。
52行目の` # config.vm.synced_folder`を対応するプロジェクトフォルダ名に変更し、コメントアウトを取り除いてください。(もちろん他のフォルダも共有可能です。)
その後、`vagrant up`すればdocker-compose環境が立ち上がります。
他のフォルダを共有してdocker-composeを動かすのもありですね。

## Tips

### docker-lampの利用
このレポジトリにはDiwamoto/docker-lampをsubmoduleとして同梱しています。
`git submodule update -i` `git submodule update --remote`でsubmouduleを更新して、
完了したら`vagrant ssh`してログインし、`cd docker-lamp`、`docker-compose up -d`でdocker-lampが立ち上がります。
mysqlのuserは`user`、passwordは`password`になっています。

### sshを早くする
`vagrant ssh`って遅いですよね。
`vagrant ssh-config --host vagrant >> ~/.ssh/config`を実行すると`ssh vagrant`で高速でsshできます。