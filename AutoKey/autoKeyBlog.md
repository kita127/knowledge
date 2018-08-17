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

設定ウィンドウはこのような感じです.<br>
[画像]<br>


### AutoKey Usage  : Phrases

Phrases are the easiest way to start with AutoKey.
You can consider this feature as a powerful text expansion.
For eg you can enter the string "adr" and get it expanded to your whole address.


Phrases は AutoKey を始める最も簡単なやりかたです.
この性質は強力なテキスト拡張とみなすことができるでしょう.
例えば文字列 "adr" を入力しあなたの住所全体を得るなど可能です.


#### Phrases : Example 1 
Lets take a simple example.
Whenever I type the string "akr" , I want it to expand to "Auto key rocks !" .
To get this , open the AutoKey config editor.
Create a new phrase by File -> Create -> New Phrase (Or Ctrl + N) .
Give the phrase a valid name.  (Eg AutoKey).
In the phrase box (the large text box – which is actually an editor !) , type "Auto Key Rocks !".
In the "Phrase Settings" section, click on the "Set" button near "Abbreviation".
Type the abbreviation as "akr" .
Your screen will look like the image at the bottom.
Click "OK" and click on "Save" button. Congrats , you have created your first phrase.<br>
[image]<br>

Lets now test it out. Open gedit (or kate or some editor) and type akr.
Watch it expand to "Auto key rocks !".
Now try it in vim. Try it in Firefox. Try it in Open Office. Watch it work at all the places.



シンプルな例を紹介しましょう.
つねに "akr" とタイプするたびに, "Auto key rocks !" と展開されるようにしましょう.
それには, AutoKey の設定開きます.
File -> Create -> New Phrases (もしくは Ctrl + N) で新しい phrase を作成します.
phrase に妥当な名前を与えます.
phraseボックス(実際はエディタである大きいテキストボックス)に, "Auto Key Rocks !" と入力します.
"Phrase Settings" 欄で, "Abbreviation" の近くの "Set" ボタンをクリックします.
下部の画像のようにスクリーンの状態がなると思います.
"OK" を押して "Save" ボタンを押します. 見事, 最初の phrase を作成できました.<br>
[画像]<br>

今すぐテストしましょう. gedit を開いて(あるいは kate やその他のエディタ) akr とタイプしてください.
"Auto key rocks !" と展開されるのを目の当たりにしてください.

vim でも Firefox でも Open Office でもすべての場所でそれが機能するのを確かめてください.

#### Phrases : Example 2 
Now let us make it slightly more complex.
Lets say we want a tab in between each word.
(Auto    Key    Rocks    ! ). To do that, select the phrase you just created.
In the editor box, type the following. "Auto`<tab>`Key`<tab>`Rocks`<tab>`!" .
Thats right. When AutoKey sees `<tab>` it expands it to the actual tab character.
Now save the phrase again and try it .

Tab is not the only hotkey that AutoKey supports.
It supports virtually all the special keys in the keyboard.
You can get all of them at AutoKey’s Hotkey’s page .

さあ, 少し複雑にしましょう.
各単語間にタブが仮にほしいとしましょう.
(Auto    Key    Rocks    ! ). これを行うには, あなたが作成した phrase を選択してください.
エディタボックスに次のようにタイプしてください. "Auto`<tab>`Key`<tab>`Rocks`<tab>`!" .
そのとおり, AutoKey が `<tab>` を見つけたらそれは実際のタブ文字に展開されます.
さあ, phrase を記録して再度試してみてください.

タブだけが AutoKey でサポートしている唯一のキーではありません.
それは実質的にすべてのスペシャルキーをサポートしています.
AutoKey のホットキーのページでそれらのすべてを知ることができます.

#### Phrases : Example 3 

Another of my favorite feature is "Match phrase case to typed abbreviation" .
 To try it out, give "Auto Key Rocks !" (ie remove those tabs) in the editor box.
 Click on "Set" button of "Abbreviation" .
 Select the checkbox "Match phrase case to typed abbreviation".
 The next checkbox "Ignore case of typed abbreviation" should be automatically become checked.
 If not check it. Save the phrase. The dialog must look like the image below.

Now experiment with various ways of typing the abbreviation.
"akr" auto key rocks !
"Akr" Auto key rocks !
"AKr" Auto Key Rocks !
"AKR" AUTO KEY ROCKS !


もうひとつの私のお気に入りの機能は "タイプした省略形のフレーズタイプにマッチする" です.
 試してみるにはエディターボックスに "Auto Key Rocks !" を与えます(要するに先ほどのタブを消します).
 "Abbreviation" の "Set" ボタンをクリックしてください.
 "Match phrase case to typed abbreviation" のチェックボックスを選んでください.
 次のチェックボックスである "入力された省略形のケースを無視する" は自動的にチェックになるでしょう.
 それをチェックしないのであればフレーズを保存します.ダイアログのイメージは下部のようなイメージになるはずです.

### Phrases : Example 4 
Another thing to try is to give hotkey to the phrase.
Of course, it does not make much sense for this small phrase.
If you have a large paragraph and want it copied in a single command , then hotkey is the way to go.
Again , hotkeys are very useful when using Scripts. (Which I will discuss shortly)

Before setting a hotkey, the usual caveats apply – make sure it does not clash with other applications’ functionality (Eg ctrl+s for expanding phrases is a bad idea !) .
Also if you are using Hotkeys make sure it is memorable.

As a simple example, lets make "Auto key rocks" when we press ctrl+alt+q.
To do that , click "Set" near "Hotkey".
You will get a dialog. Click on "ctrl" , "alt". Now to set "Q" , click on "Press to set" and type "Q".
Press "Ok" and save the phrase. Your screen will look the image below  .
Now type "ctrl+alt+q" in any application and watch it become "Auto key rocks !".
[image]<br>

もうひとつ確認することはホットキーにフレーズを付与することです.
もちろん, この小さなフレーズに対してホットキーを与えるのはあまり意味はありません.
もし, 大きなパラグラフがありなおかつ単一のコマンドでコピーしたい場合, hotkey はベストなやり方です.
(~~~ is way to go : ~~~ するのがベストだ)
重ねて, hotkey はスクリプトを使用する際にとても有用です. (後ほど論じます)

hotkey を設定する前に注意すべきことがあります - その他のアプリケーションの機能と衝突しないか確認してください.　(例えば ctrl+s にフレーズの拡張を割り当てるのは良い考えではありません)

シンプルな例として, "Auto key rocks" を ctrl+alt+q を押したときに展開されるようにしましょう.
そうするには, "Hotkey" 付近の "Set" をクリックしてください.
ダイアログが表示されます. "ctrl" , "alt" をクリックし, "Press to set" をクリックし "Q" を入力し設定してください.
"Ok" を押下しフレーズをセーブしてください. スクリーン上は以下のイメージのようになるでしょう.
様々なアプリケーション上で "ctrl+alt+q" を押下して, "Auto key rocks!" と展開されることを確認してみてください.

### Phrases : Example 5 
Let us suppose you want your abbreviation to work only in one application.
This can be achieved using "Window Filter". Let us take an example.
You want akr to be expanded in Gedit only.
Notice that any document (new or existing) opened in Gedit ends with the word gedit.
We will use that as our filter.
To achieve that , select the phrase and click on "Set" near "Window Filter".
Enter ".\*gedit" as the filter. There are two things to note here .
a) The filter is actually a regular expression which has lot of expressive power. 
b) The regular expression must match the whole window name. Just having "gedit" will not match a gedit window.

あなたの設定した省略系が単一のアプリケーションでだけ動作したいと仮定しましょう.
(Let's suppose ~~~ : ~~~ と仮定しましょう)
これは "Window Filter" を使用することで成し遂げられます. 例を挙げましょう.
akr が Gedit 上でのみ展開したいとします.
注意すべきは Gedit で開かれたドキュメント(新規も既存も)は gedit というワードで終わるのに気をつけてください.
それをフィルタとして使用します.
成し遂げるには, フレーズを選択し "Window Filter" そばの "Set" をクリックします.
フィルタとして ".\*gedit" と入力してください. 注意すべきことが2点あります.
a) フィルタは実際のところたくさんの表現をもった正規表現であります.
b) 正規表現はすべてのウィンドウの名前に対してマッチしなければなりません. 単に "gedit" だけでは gedit のウィンドウにはマッチしません.


### Phrases : Example 6 

One of the common ways I use Phrase is to expand code snippets.
For eg when I type cppincs , then I automatically the following snippet.
It works whether in vim or in gedit.
(If you use primarily vim, then checkout vim plugins like snippetsEmu or snipMate ).
`
#include <iostream> 
#include <string> 
#include <vector> 
#include <set> 
#include <map> 
#include <algorithm>

using namespace std;

int main() 
{ 
return 0; 
}
`

### Phrases : Example 7 
