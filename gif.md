# gif

## Mac

1. Shift + Command + 5 で動画をとる
    * https://dev.classmethod.jp/articles/mac-screen-gif-anime/
1. 撮影した動画(.mov)を ffmpeg で gif に変換する
    1. パレット画像の生成
        * ffmpeg -i input.mov -vf "palettegen" -y palette.png
    1. gif 画像出力
        * ffmpeg -i input.mov -i palette.png -r 24 -y output.gif
    * https://qiita.com/takasp/items/65d1d0d90073bcfc4873
