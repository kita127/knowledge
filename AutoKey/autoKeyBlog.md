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

AutoKey can be used in multiple scenarios :
a) Text Substitution : Replace a short abbreviation with a long expansion.
 Eg adr with your full address.
b) Hotkeys : If you are a keyboard person like me, use it open various program.
 For eg I use windows+c for opening chrome, windows+g to open  gedit etc.
 Alternatively, you can make AutoKey "send" hotkeys to the applications.
 (Eg make it press ctrl+s automatically).
c) Automation : AutoKey supports Python scripts and has a very useful API’s to control windows, clipboard and mouse.
 So you can use it to automate any thing you can imagine !

The biggest advantage of AutoKey is that it works across all applications.
 So I can add a keyword which expands to a code snippet and use it in multiple applications – say in vim and also in gedit without any extra work.


AutoKey のホームページでは簡潔に"AutoKey は Linux や X11 へのデスクトップ自動化便利ツールです.
 短縮形のタイプやホットキーによって事実上様々なタスクを自動化することを可能にしてくれます.
 初心者のための高度なアクセスを可能にするフル機能のGUIと, 同じく完全な柔軟性と Python のパワーを提供するスクリプティングインターフェースを提供します."
 と説明されています.
