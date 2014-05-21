## 実行環境
* Mac OSX Marverics
* vagrant (1.6.1)
* virtualbox (4.3.8) => 最新版(4.3.10)はshared folder周りでバグがあるため使わないようにしましょう
* Chef (11.12.4)
* git (1.9.2)

## 事前準備
* <http://vagrantcloud.com>でアカウント登録をする
* 登録後、vagrantコマンドからログインしてBOXをダウンロードする
```
vagrant login
vagrant box add svigneux/vyos-1.0.2-amd64
vagrant box add kakky0312/precise64
```
* githubから実行用ファイルを落としてきて、さらにsubmoduleも落とします
```
git clone https://github.com/kakky0312/vagrant-init.git
cd vagrant-init
git submodule init
git submodule update
```
* これで準備は終わりです

## 実行方法
* Vagrantfileがある場所でvagrant upコマンドでVMを立ち上げます
* chef-soloが動作するように明示的にprovisionオプションもつけます
```
vagrant up --provision
```
* 数分待っていると作成が終わります

## 作成されるVM
* WEBサーバ
* SW20サーバ
* SW30サーバ
* DBサーバ
```
WEBサーバ <= 192.168.20.10/24
 |
 |
 | ↓ 192.168.20.254/24 (GW)
SW20
 | ↑ 192.168.10.1/30
 |(OSPF)
 | ↓ 192.168.10.2/30
SW30
 | ↑ 192.168.30.254/24 (GW)
 |
 |
DBサーバ <= 192.168.30.10/24
```
