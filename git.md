# git

## git コマンド
### バージョンツリーを表示(全てのブランチ)
gitk --all

### Gitリポジトリを作成する
git init

### リモートリポジトリの情報を追加
git remote add origin `リモートリポジトリパス.git`

### クローンを作成する
git clone `pass`

### ローカルリポジトリを特定のリビジョンに戻す(変更は全て削除)
git reset --hard `id`

### ブランチの一覧を見る
git branch -a

### ローカルでブランチを作成する
git checkout -b `新ブランチ名`


### ローカルリポジトリのブランチ移動
git checkout `ブランチ名`

### ワークディレクトリの状態を確認
git status


### 作成したブランチをリモートに登録
git push -u origin `作成したブランチ名`


### ワークの変更をインデックスする
git add `対象のファイル`

### インデックスの変更をローカルリポジトリにコミット
git commit `対象のファイル` -m "タイトル" -m "本文"

### リモートリポジトリの情報を取得する
git fetch

### fetchしたリモートリポジトリの状態をローカルリポジトリに反映する
git merge HEAD_FETCH

## git コンフィグ
以下.gitconfigファイルに設定する内容

### git status等の日本語表記崩れを修正する
quotepath = false
