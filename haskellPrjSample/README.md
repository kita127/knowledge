# haskellPrjSample
## Built With
### 1.プロジェクトのトップディレクトリでビルドする
stack build
### 2.実行コマンドで実行可能
stack exec haskellPrjSample-exe
### 3.binにバイナリを生成
stack installで実行体がlocal/binに実行体が生成される<br>
local/binは以下で確認<br>
stack path --local-bi
### 4.pathを通す
local/binに環境変数を通せば以下でコマンド実行できる<br>
haskellPrjSample-exe
