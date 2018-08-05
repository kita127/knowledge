# AutoKeyBlog
## 出典
https://saravananthirumuruganathan.wordpress.com/2010/04/14/autokey-linux-utility-for-text-substitution-hotkeys-and-desktop-automation/

## AutoKey : Linux Utility for Text Substitution , Hotkeys and Desktop Automation

April 14, 2010 by Saravanan Thirumuruganathan

In this post, I talk about one of my favorite utilities I use regularly – AutoKey.
 AutoKey is a real life saver and a great productivity boost for me.
 There are not much articles about AutoKey and even those few cover very few of its features.
 I intend to talk about some of my favorite features which I use regularly.
 I use AutoKey’s GTK version in Ubuntu but most of the points in the post will be applicable to other Linux variants and KDE.

このポストでは, 私が普段使用しているお気に入りの便利ツールの話をします - AutoKeyです.
 AutoKey は実生活を救い,　私にとって生産を後押ししてくれます.
 AutoKeyについて書かれた記事は少なくAutoKeyの特徴が抑えられた記事はさらに少ないです.
 私は定期的に使用するお気に入りの特徴をお話しようかと思います.
 私は Ubuntu の GTK バージョンを使用していますが, この記事のほとんどの要点はその他の Linux 派生や KDE にも適用できます.


### What is AutoKey
AutoKey’s homepage describes it concisely as : "AutoKey is a desktop automation utility for Linux an X11.
 It allows the automation of virtually any task by responding to typed abbreviations and hotkeys.
 It offers a full-featured GUI that makes it highly accessible for novices,
 as well as a scripting interface offering the full flexibility and power of the Python language.".

If you have used AutoHotKey in Windows, then you will be immediately comfortable in AutoKey.
 (If not, you should check it out !) .
  AutoKey uses Python as the scripting language instead of AutoHotKey’s custom scripting language.
 But the potential and functionality are very similar.

AutoKey can be used in multiple scenarios :<br>
a) Text Substitution : Replace a short abbreviation with a long expansion.
 Eg adr with your full address.<br>
b) Hotkeys : If you are a keyboard person like me, use it open various program.
 For eg I use windows+c for opening chrome, windows+g to open  gedit etc.
 Alternatively, you can make AutoKey "send" hotkeys to the applications.
 (Eg make it press ctrl+s automatically).<br>
c) Automation : AutoKey supports Python scripts and has a very useful API’s to control windows, clipboard and mouse.
 So you can use it to automate any thing you can imagine !<br>

The biggest advantage of AutoKey is that it works across all applications.
 So I can add a keyword which expands to a code snippet and use it in multiple applications – sayvim and also in gedit without any extra work.


AutoKey のホームページでは簡潔に"AutoKey は Linux や X11 へのデスクトップ自動化便利ツールです.
 短縮形のタイプやホットキーによって事実上様々なタスクを自動化することを可能にしてくれます.
 初心者のための高度なアクセスを可能にするフル機能のGUIと, 同じく完全な柔軟性と Python のパワーを提供するスクリプティングインターフェースを提供します."
 と説明されています.

もしあなたが Windows の AutoHotKey を使ったことがあれば, すぐに AutoKey を心地よく使えるでしょう.
(もし知らなければ是非調べてみてください)
 AutoKey は AutoHotKey のカスタムスクリプティング言語の代わりに Python をスクリプティング言語として使用します.
 しかしポテンシャルや機能はとても似ています.

AutoKey は複数のシナリオで使用できます.<br>
a) 文の代替 : 長い展開式を短い省略形で置き換えます.
 例えば adr はあなたの住所に置き換わる.<br>
b) ホットキー : もしあなたが私の様なキーボード野郎であればそれを使って様々なプログラムを起動できます.
 例えば私は windows+c で chrome が windows+g で gedit が立ち上がるなどしています.
 あるいは､ AutoKey をアプリケーションにホットキーを送信するようにもできます.
 (例えば ctrl+s を自動で押す等)<br>
c) 自動化 : AutoKey は Python スクリプトとウィンドウ, クリップボード, マウスなどをコントロールためのとても便利なAPIをサポートしています.
 あなたはイメージした通りに自動化するためにそれを使うことができます.<br>

AutoKey 最大の長所は全てのアプリケーションをまたいで実行されるということです.
 コードの断片に展開されるキーワードを追加し様々なアプリケーションで使用することができます - vim または gedit など余計な手間をかけることなく.

### Installation

You can read all about the utility at AutoKey’s homepage.
The Google code page is the recent (and active) one even though most links in net points to a sourceforge page.

There are many ways to install AutoKey and it depends on your OS. For Ubuntu, the easiest way is to install using the update manager.
I would suggest using the update manager as it will install the dependencies automatically.
If you want to be in the latest code then the best solution is to add AutoKey PPA to your system.
Instructions for adding the PPA is in the linked page.
I would recommend getting the latest version (0.70) as it has lot of new features and some important bug fixes.
Of course, if you use any other Linux variant, you can always install from AutoKey’s source at the download page.

AutoKey のホームページからすべての有益な機能を読むことができます.
Google コードページは最近のものです(そして使用されている).ほとんどのネット上のリンクは sourceforge のページを指しているにもかかわらず.

AuboKey のインストールには様々な方法がありそしてそれはあなたの OS に依存します.
Ubuntu に於いては update manager を使用するのが最も簡単な方法です.
私は依存するものを自動でインストールしてくれる update manager の使用をおすすめします.
もし最新のコードにしたい場合の最もよい解決策はあなたのシステムに AutoKey PPA を追加することです.
PPA の追加のしかたはリンクページに記載しています.
多くの新しい機能や重大なバグが修正された最新版である(0.70)を取得することをおすすめします.
もちろん, その他の Linux の亜種を使用していたとしても, ダウンロードページからいつでも AutoKey のソースをインストールすることができます.

### Starting AutoKey

You can start AutoKey in Ubuntu by Applications -> Accessories -> AutoKey.
Or in command line (for GTK) as /usr/bin/autokey-gtk.
Once it is started , you will see an blue icon with "A" in the tray.

Once you start using AutoKey , you will prefer to start it when the system starts.
For Ubuntu (GTK) AutoKey, System -> Preferences -> Startup Applications , enter "/usr/bin/autokey-gtk" as an additional startup entry.
Note : AutoKey also has an option in its preference to start automatically but it did not work for me.



Ubuntu では AutoKey をApplications -> Accessories -> AutoKey で開始できます.
もしくはコマンドライン(GTKでは)から /usr/bin/autokey-gtk をたたきます.
一度開始すると, "A" という青いアイコンがトレーに見ることができるでしょう.

一度 AutoKey を起動したら, システム開始時にスタートしたほうがよいと思うでしょう.
Ubuntu(GTK) の場合は, System -> Preferences -> Startup Applications を選択, 追加のスタートアップエントリーとして "/usr/bin/autokey-gtk" を入力します.

注 : AutoKey は自前の優先オプションに自動でスタートするためのものがありますが, 私の環境では機能しませんでした.


### Some Basics

AutoKey appears in the tray as a blue colored icon with "A" in it.
Most of the time, it runs passively , reading your keystrokes.
Right click on the icon and make sure that the checkbox "Enable Expansions" is checked.
Only then AutoKey will perform the expansions.
To make any changes, you need to access its configuration dialog box.
To get it , right click on the AutoKey icon and select "Configure".

The configure window will look like this.<br>
[image]<br>



AutoKey は "A" という表示の青色のアイコンでトレイ内に表示されます.
AutoKey はほとんどの場合あなたのキーストロークを受けて実行します.
アイコンを右クリックし "Enable Expansions" のチェックボックスがチェックされていることを確認してください.
チェックされていれば AutoKey は拡張を展開します.
なにか変更をしたい場合は, 設定(configuration)ダイアログボックスにアクセスする必要があります.
それは, AutoKey アイコンを右クリックし "Configure" を選択してください.

設定ウィンドウはこのような感じです.
[画像]


### AutoKey Usage  : Phrases
