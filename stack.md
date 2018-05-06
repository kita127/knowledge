# stack

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
