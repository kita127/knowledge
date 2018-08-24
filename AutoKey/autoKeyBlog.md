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

#### Phrases : Example 4 
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

#### Phrases : Example 5 
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


#### Phrases : Example 6 

One of the common ways I use Phrase is to expand code snippets.
For eg when I type cppincs , then I automatically the following snippet.
It works whether in vim or in gedit.
(If you use primarily vim, then checkout vim plugins like snippetsEmu or snipMate ).

私が Phrase で使用する一般的な使い方の一つはコードの断片に展開することです.
例えば cppincs とタイプすれば, 自動的に以下の断片を展開します.
それは vim であれ gedit であれ有効です.
(もし vim を主要なエディタとして使用するのであれば, snippetsEmu や snipMate のような vim プラグインをチェックアウトしてください.)

```
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
```

#### Phrases : Example 7 

You can use AutoKey to enter username and password automatically.
A simple example is to have a phrase like “username`<tab>`password`<enter>`”.

ユーザーネームやパスワードを AutoKey によって自動的に入力することもできます.
シンプルな例としては phrase に " username`<tab`password`<enter>`" のような展開を記述することです.

### Misc Phrases Features

There are some other options in Phrases menu. These features are applicable to scripts also.

a) "Always Prompt before pasting this phrase" – If checked, when you type the abbreviation , you will see a confirm from AutoKey.
Only when you confirm it will be expanded.
I doubt , you will ever select it. 
b) Show in Tray menu : If you select this option, your phrase will be visible when you right click on the AutoKey icon.
I guess , this will be useful when you dont assign an abbreviation or hotkey for a phrase.
But again, why will you ever do that ?

その他にも Phrase メニューのいくつかのオプションがあります. これらの機能はスクリプトに対しても適用できます.

a) "Always Prompt before pasting this phrase" - もしチェックした場合, 省略系をタイプすると, AutoKey から確認が促されます.
そして, あなたが確認した時のみ展開されます.
しかし, 私はあなたがそれを選択するかは疑わしいです.
b) "Show in Tray meny" : あなたがこれを選択した場合, AutoKey アイコンを右クリックした時にフレーズが表示されます.

これは省略形やホットキーを phrase に割り当てない場合, 役に立つでしょう.
が, 度々になりますが, なぜこれを選択するでしょう.

### Misc Abbreviation Features

When you click on "Set" near "Abbreviation" you will see lot of options.
Again, the same description applies to scripts also.

a) Remove typed abbreviation : It is usually checked.
This means you are actually asking for a text substitution.
ie "akr" becomes "Auto key rocks !" .
If you uncheck it, then "akr" becomes "akrAuto Key Rocks !". 
b) Omit trigger character : Typically the phrase is expanded when you type a space or press enter.
If you select this option, they will be ignored. 
c) We already discussed "Match phrase case to typed abbreviation"  and "Ignore case of typed abbreviation" in Example 3. 
d) "Trigger when typed as part of word" and "Trigger immediately"  : These two work in conjunction.
If both are checked, the abbreviation is expanded immediately without waiting for space or enter.


"Abbreviation" 付近の "Set" をクリックすれば, たくさんのオプションを確認できます.
また, 同様の内容がスクリプトへも適用できます.

a) Remove typed abbreviation : これはだいたいチェック済です.
これは実際にテキストの置換を要求するというわけです.(This means ~~ : ~~ という訳だ)
例えば "akr" は "Auto key rocks !" になります.
もしチェックしなければ "akr" は "akrAuto Key Rocks !" となります.
b) "Omit trigger character"(トリガ文字を省略する) : 一般的にフレーズはスペースやエンターが入力された際に展開されます.
しこのオプションを選んだ場合, それらは無視されます.
c) "Match phrase case to typed abbreviation" や "Ignore case of typed abbreviation" については例3で説明済みです.
d) "Trigger when typed as part of word"(単語の一部として入力をトリガ) や "Trigger immediately"(即座にトリガ)
 : これら2つは連携して働きます.
 両方チェック済みであれば, 省略形はスペースやエンターなしに即座に展開されます.


### AutoKey Usage  : Scripts

Scripts are the coolest feature in AutoKey.
 AutoKey uses Python as the scripting language for automation.
 If you don’t know Python, you should really learn it ! AutoKey has an excellent set of API to make your code a breeze.
 Scripts come into play when you want to do more complex things than simple substitution.
 Examples include : bringing the current time in the document automatically, adding selected word automatically to Google calendar etc.
 In fact you can even show some rudimentary GUI to user.
 Most of the features in scripts are similar to phrase features.

Scripts は Autokey におけるクールな機能です.
 AutoKey は Python を自動化用のスクリプト言語として使用しています.
 もし Python を知らなければ, それを学ぶべきです! AutoKey にはコードをたやすく作成するための素晴らしい API 群があります.
 Scripts はシンプルな置換よりもより複雑なことをする際に有用になります.
 例として含まれるのは : ドキュメントに自動的に現在時刻を持ってくるや, Google カレンダーに自動的に選択した単語を追加するなど etc です.
 実際にはユーザーに簡単な GUI を表示することさえも可能です.
 Scripts のほとんどの機能は Phrase の機能と似ています.


#### Scripts : Example 1 

This example is from AutoKey’s sample scripts page.
 Lets say you want to bring the current date and time whenever you typed the word "date" in any     application.
 File -> Create -> New Script (or Ctrl + Shift + n) .
 You will be see a editor with full Python code highlighting. Enter the following script

この例は AutoKey のスクリプトサンプルページにあります.
常に "date" と入力すればどのアプリケーションにおいても現在時刻を取得したいとしましょう.
 File -> Create -> New Script (もしくは Ctrl + Shift + n) .
完全に Python のシンタックスハイライトに対応したエディタが立ち上がります.
そして以下のスクリプトを入力してください.

```
    output = system.exec_command("date")
    keyboard.send_keys(output)
```

The screen should look like this : <br>
[image]<br>

スクリーン上はこんな感じになるはずです.
[画像]<br>

Note that in this case, system was already imported.
 If you want to use some other package, you might want to import it first.
 Give "date" as the abbreviation.
 Save the script and type "date" in any application and watch it magically become current time (Eg Wed Apr 14 21:14:27 CDT 2010 ) .
 Of course, you can have a hotkey assigned for the script too !

注意すべきはこの場合は, システムをすでにインポート済みであるということです.
 もし他にパッケージを必要とする場合は, 先にインポートすることをオススメします.( might want to ~~ : ~~ してはいかがでしょうか)
 "date" という単語を省略形として与えます.
 スクリプトを記録し "date" という単語を任意のアプリケーションで入力してみてくださいそして魔法のように現在時刻が得られることを確認してください.
 もちろん, ホットキーをスクリプトに割り当てることも可能です !

#### Scripts : Example 2 

One of my favorite way of using AutoKey is to use it as a way to invoke applications.
 I am more of a keyboard person and like to do everything without touching the mouse.
 For eg , when I press "super+c" , Chrome gets started. Lets try it now.

In a new script , press the following code and assign "super+c" as the hotkey.
 Super is nothing but the windows key on the keyboard.
 After saving it , when you press "windows(super) + c" , Chrome starts !

AutoKey の使用法として気に入っていることのひとつはアプリケーションの起動の方法として使用することです.
 私はとてもキーボード人でありなんでもマウスなしでやりたがります.
 例えば, "super+c" でクロームが起動します. 試してみましょう.

新しいスクリプトで以下のコードを入力し "super+c" をホットキーとしてわりあてます.
 Super とはキーボード上のウィンドウズキーにほかなりません.(nothing but ~~ : ~~ に他ならない)

```
    import subprocess
    subprocess.Popen(["/usr/bin/google-chrome"])
```

You can note that there are two ways of invoking commands.
 "system" is the old way of invoking it. 
It works well when you want to wait for the output of the command.
 "subprocess" is much more flexible.
 I have used "Popen" which is typically used to start a program and you want to wait for it to end.

コマンドの呼び出しには2つの方法があることに注意してください.
 "system" は古くからある呼び出し方法です.
 それはコマンドのoutputが出力されるまで待機したい場合に使えます.
 "subprocess" はより柔軟です.
 私は決まってプログラムを開始するため "Popen" を使用していますそしてあなたはそれが終わるのを待ちます.
#### Scripts : Example 3 

Alternatively, you might want to use AutoKey to open some folders or files based on a hotkey.
 Eg open your "Ubuntu One" folder with a hotkey or open some excel sheet.
 A generic way (Obtained from the discussion [[here]] ) is given below.
 xdg-open intelligently, opens the file/folder using the appropriate viewer/program.

あるいは, AutoKey を使用しホットキーによりフォルダやファイルをオープンしてはいかがでしょうか.
 例えば "Ubuntu One" フォルダをホットキーにより開いたりもしくは excel シートを開くなど.
 標準的なやり方([[here]]ここの説明で得られた)は以下に示すとおりです.
 xdg-open は利口に対象のファイルやフォルダの専用である viewer や program を使用してオープンしてくれます.


```
    import subprocess
    subprocess.call([‘xdg-open’, ‘PATH_TO_FILE_OR_DIR’])
```

#### Scripts : Example 4 

There are lot of interesting ways to use the full power of Python.
 Some clever usage can be seen at [[Favorite scripts 1]] ,  and [[Favorite scripts 2]] .

Python の機能をフルに活用した興味深いやり方がたくさんあります.
 [[Favorite scripts 1]] や [[Favorite scripts 2]] のようないくつかの便利な利用法が見れます.

#### Scripts : Example 5
AutoKey has a powerful API to control windows, clipboard, mouse etc.
 For eg, you make a particular window come to foreground (see window.activate) , get the selected text, get contents of clipboard, add a text to clipboard etc.
 You can check the [[AutoKey API reference]].  You can also check out some [[sample scripts]] .

Another neat feature is to provide a lib folder and AutoKey will import all files in that folder.
 I have not tried this feature, but I think it should work.
 To get that Edit -> Preferences -> Script Engine.

AutoKey は強力な API を持っています, ウィンドウやクリップボードやマウスなどを操作するための.
 例えば, ウィンドウの一部を全面に持ってくるや(window.active を確認), 選択したテキストの取得や, クリップボードの中身を取得や, テキストをクリップボードに追加など.
 [[AutoKey API reference]] をチェックしてみるとよいでしょう. [[sample scripts]] をチェックしてみるのもよいでしょう.

その他の巧妙な機能は lib フォルダを提供しそこからすべてのファイルをインポートすることです.

 私はまだこの機能を試していませんが, 機能するはずです.
 使用するには Edit -> Preferences -> Script Engine を押下してください.

### Folders

AutoKey uses folders to organize the phrases and scripts.
 You can either create a new top level folder or some nested folders.
 This concept is quite easy to use.
 I group the phrases and scripts based on their functionality and intent.
 You can use any organization that works for you.

AutoKey はフレーズやスクリプトを体系づけるためフォルダを使用します.
 新しいトップレベルのフォルダあるいはいくつかのネストされたフォルダのどちらでもを作成することができます.
 このコンセプトは非常に使いやすいです.
 フレーズやスクリプトをそれらの機能や使用目的に応じてグループ分けできます.
 目的ごとに組織化された塊ごとに使用することができます.

### Trays

The concept of tray is another useful feature – Although, I rarely use it.
 There are two ways to add a phrase or script to the tray.
 First is to add the phrase/script within the "Tray Phrases" folder.
 Other way is to check the checkbox "Show in tray menu" (for both phrase and script).
 In both the scenarios, when you right click on the AutoKey icon, you will see them.
 My guess is that this will be useful if you did not set a hotkey or abbreviation.


tray のコンセプトはその他の有用な機能です - しかしながら, 私はほとんど使用していません.
 tray にフレーズやスクリプトを加える方法は2通りあります.
 ひとつ目は "Tray phrases" フォルダ内に フレーズ/スクリプトを加えるやりかた.
 もうひとつの方法は "Show in tray meny" チェックボックスにチェックをつけます(フレーズとスクリプトの両方).
 この2つのシナリオは両方とも AutoKey のアイコンを右クリックすれば表示されます.
 私の推測ではこれはホットキーあるいは省略形を設定しないときに有用となると考えています.

### Preferences

AutoKey has a intuitive preferences menu. Common things to do are :<br>
a) Enable "Prompt for unsaved changes" checkbox in "General" tab.
 If unchecked, the phrase/script changes are automatically saved.<br>
b) Also check "Enable undo by pressing backspace".
 This means when you want to type a text which is a abbreviation (eg akr) without getting expanded, then you type the string,let it expand and press the backspace immediately.
 It will give the abbreviation without the expansion.<br>
c) Another thing to change is default hotkey to get AutoKey’s config window.
 It is usually ctrl+k which interferes with Firefox’s search button.<br>
d) Check out other options and enable as you feel fit.<br>


AutoKey には直感的な優先メニューがあります. 一般的にやることは(things to do : やること) :<br>
a) "一般" タブにある"セーブしていない変更に対してプロンプトを表示" チェックボックスを有効.
 もしチェックしていなければフレーズやスクリプトの変更が自動的にセーブされます.<br>
b) また"backspace で undo を有効" にチェック.
 これは展開なしに省略形(例えば akr)のテキストを入力したい場合, 文字列を入力し, それが展開されたら即座に backspace を入力することにより実現できることを意味しています.<br>
c) その他の変更に関する事柄は AutoKey のコンフィグウィンドウへのデフォルトのホットキーです.
 FireFox の検索ボタンを妨げるのは ctrl+k です.<br>
d) その他のオプションを調べそしてあなたの感覚にフィットするよう設定しましょう.


### Miscellaneous Stuff (種々雑多なもの)

1. Autokey works by catching you keystrokes and doing the expansion or script execution.
 This has many implications which you will notice when you use AutoKey a lot.
 For eg when you copy paste a text with an abbreviation , it will not expand as you did not "type" it.
 Similarly you can cause a abbreviation to be not expanded if you use your left/right keys.
 Of course, using backspace within an abbreviation still results in proper expansion.

1. AutoKey はあなたのキー入力を受け取って仕事をしたりテキストを展開したり, スクリプトを実行します.
あなたが AutoKey をたくさん使用することにより気づくであろうたくさんの実装を持っています.
例えば省略形をコピー＆ペーストした時にはタイプしていないので展開されません.
似たようなことでは, left/right キーを使用したときにも省略形は展開されません.
もちろん, 省略形の範囲内でバックスペースを使用しても結果は的確な展開となります.

2. Previous versions of AutoKey had a nifty hotkey called cursor which will place the cursor at that position.
 It is not supported. For  a workaround , see this Ubuntu forums thread.
 To give it here ,

2. 以前の AutoKey のバージョンにはカーソルをその位置におけるカーソルと呼ばれる粋なホットキーがありました.
今はサポートされていません.応急処置としては, Ubuntu forums thread をご確認ください.
それを与えるためには...

    firstPart = "First part of the text. Cursor ->"
    secondPart = "<- second part"
    keyboard.send_keys(firstPart + secondPart)
    keyboard.send_key("<left>", len(secondPart))

3. If you want to see all the AutoKey topics and responses , check out their mailing list topics.
3. もし AutoKey の全てのトピックや回答を確認したければ, メーリングリストのトピックを確認してください.


4. AutoKey now uses a json file for configuration.
 It is located at ~/.config/AutoKey/AutoKey.json.
 Enjoy playing with it ! This also means that if you want to use the same settings across users , just create a symlink to the same file.
 If you want to share across multiple machines use Dropbox or Ubuntu One.
 For more details, check this AutoKey thread.

4. AutoKey は現在設定用に json ファイルを使用しています.
それは ~/.config/AutoKey/AutoKey.json に配置されています.
是非ご活用ください! これはもしあなたがユーザーをまたいで設定を使用したい場合は同じファイルへのシンボリックリンクを作成すればよいということを意味しています.
もし複数のマシンで共有したければ Dropbox か Ubuntu One を使用します.
詳細は, AutoKey thread をご確認ください.

5. If you face any issues when using it, follow the instructions at the Troubleshooting page before shooting a mail.
 That said, I have to say that AutoKey mailing list is very active and helpful !

5. もし使用している時に何かしらの問題に直面したときは, メールを出す前にトラブルシューティングページの指示に従ってみてください.
 AutoKey のメーリングリストはとても活発で助けになると言うことをお伝えしなければなりません.

6. This is a post from LifeHacker on snippits , another tool similar to AutoKey.
 I would not recommend it (as I had  a hard time even installing it).
 But the point is , you should be able to use most of the things done in the video and more using AutoKey.
 Use that video as an exercise for testing your AutoKey skills 🙂

7. There is another project called IronAHK that is going on which brings AHK to Linux.
 It is not yet ready for prime time.
 If you are a AutoHotKey user , may be you will find it useful.

### Good Discussions In AutoKey’s Mailing List


