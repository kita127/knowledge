# stack
## インストール
### Windows
下記のstackのダウンロードページより、インストーラーをダウンロードして実行する<br>
https://docs.haskellstack.org/en/stable/install_and_upgrade/#windows
※Windowsではパスや実行できるコマンドの長さに制限があるので、stackやプロジェクトが利用するディレクトリをルートの<br>
の近くに設定しておく<br>
環境変数STACK_ROOTをc:\stack_rootという値にする<br>

### インストール後
シェルやコマンドプロンプトから`stack`コマンドが実行できることを確認する<br>
`stack update`を行いグローバルプロジェクト用のフォルダを作成する<br>
`stack upgrade`で最新のstackバージョンに更新する<br>
`stack setup`でGHCをインストール(ver.1.6.1以降はbuild時になければインストールしてくれる模様)<br>

## アプリケーション
### プロジェクトビルド
プロジェクトのトップディレクトリで以下を実行<br>
stack build

### プロジェクトのバイナリを実行
プロジェクトのトップディレクトリで以下を実行<br>
stack exec `プロジェクト名`-exe

### ビルドしたバイナリをインストール
プロジェクトのトップディレクトリで以下を実行<br>
stack install<br>
/home/user/.local/bin にバイナリがコピーされる。パスを通しておけば以後、コマンドとして実行可能になる<br>
ubuntuの場合は.profileに以下を記述<br>
PATH="~/.local/bin:$PATH"<br>
export PATH<br>

### プロジェクトをフル・クリーン(.stack-workもまるごと消す)
stack clean --full

## ライブラリ
### グローバルデータベースの作成
stack exec -- hoogle generate

#### プロジェクトデータベースの作成
stack hoogle

## コマンド
### stack setup
GHCコンパイラをインストールする<br>
Ver 1.6.以降はstack buildした際にインストールされるそうなので不要かも？<br>
### stack update
パッケージインデックスを最新のものに更新する<br>
初回実行時はグローバルプロジェクトフォルダ$HOME/.stackに作成する<br>
### stack upgrade
stackバージョンをlatestのものに更新
