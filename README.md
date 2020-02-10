# vagrant-lamp
vagrantを使ってdocker for macのファイルioが遅い問題を解決したものになります。

submoduleとしてdocker-lampを登録しているので`vagrant up`するだけでlampが起動します。
もうdocker-syncでファイルが更新されない謎とはおさらばです。

## 利用方法
自分のプロジェクトフォルダと同階層にcloneしてきます。
Vagrantfile.defaultをVagrantfileにリネームしてください。
52行目の` # config.vm.synced_folder`を対応するプロジェクトフォルダ名に変更し、コメントアウトを取り除いてください。
その後、submouduleを更新します。`git submodule update -i` `git submodule update --remote`
完了したら`vagrant up` これで終わりです。
必要なものはvagrantが動く環境のみです。

## Tips
この環境は私が作ったdockerのlamp環境をdocker用の超軽量linuxである`barge`を利用しています。
mysqlのuserは`user`、passwordは`password`になっています。

