# Why Haskell matters
なぜHaskellなのか

# 出典
https://wiki.haskell.org/Why\_Haskell\_matters



### 3 Haskell vs OOP

```
The great benefit of Object Oriented Programming is rarely that you group your data with the functions that act upon it together into an object
 - it's that it allows for great data encapsulation (separating the interface from implementation) and polymorphism (letting a whole set of data types behave the same way).
 However:

Data encapsulation and polymorphism are not exclusive to OOP!

オブジェクト指向言語における大きな利益は同一のオブジェクト上でデータと関数をグループ化することです.
 - それは多大なカプセル化(インターフェースと実装を分ける)とポリモフィズム(データ型セットの全てを同一の方法で振る舞わせる)を可能とします.
 しかしながら:

カプセル化とポリモフィズムはオブジェクト指向の専売特許ではありません.


Haskell has tools for abstracting data. We can't really get into it without first going through the module system and how abstract data types (ADT) work in Haskell,
 something which is well beyond the scope of this essay. We will therefore settle for a short description of how ADTs and polymorphism works in Haskell.

Haskell 抽象データのためのツールを持っています. モジュールシステムと抽象データ型(ADT)が Haskell 上でどのように働くかの説明がはじめになしでは要領を得ないでしょう,
 これはこのエッセイの範囲を超えてしまいます. したがって, Haskell における ADTs と ポリモフィズムの短い説明に落ち着けようと思います.


Data encapsulation is done in Haskell by declaring each data type in a separate module, from this module you only export the interface.
 Internally there might be a host of functions that touch the actual data, but the interface is all that's visible from outside of the module.
 Note that the data type and the functions that act upon the data type are not grouped into an "object",
 but they are (typically) grouped into the same module,
 so you can choose to only export certain functions (and not the constructors for the data type) thus making these functions the only way to manipulate the data type - "hiding" the implementation from the interface.

データのカプセル化は別々のモジュールでそれぞれのデータ型を宣言することで完了します, このモジュールからはインターフェースのみ外部に公開します.
 内部的には実データを操作する実際の関数があるかもしれませんが, インターフェースはモジュールの外から見えるものすべてになります.
 注意すべきはデータ型とデータ型上で作用する関数はオブジェクトでグループ化されないことです.
 しかし同じモジュール上ではグループ化されます(一般的に),
 それ故, 確かな関数(そしてこれはデータ型のコンストラクタではない)のみ外部に公開しこれらの関数のみがデータ型を操作します - インターフェースから実装を"隠す"ことができます.


Polymorphism is done by using something called type classes. Now,
 if you come from a C++ or Java background you might associate classes with something resembling a template for how to construct an object,
 but that's not what they mean in Haskell. A type class in Haskell is really just what it sounds like.
 It's a set of rules for determining whether a type is an instance of that class. So Haskell separates the class instantiation and the construction of the data type.
 You might declare a type "Porsche", to be an instance of the "Car" type class, say.
 All functions that can be applied onto any other member of the Car type class can then be applied to a Porsche as well.
 A class that's included with Haskell is the Show type class, for which a type can be instantiated by providing a show function, which converts the data type to a String.
 Consequently almost all types in Haskell can be printed onto the screen by applying show on them to convert them to a String,
 and then using the relevant IO action (more on IO in the tutorials).
 Note how similar this is to the the object notion in OOP when it comes to the polymorphism aspect.
 The Haskell system is a more intuitive system for handling polymorphism.
 You won't have to worry about inheriting in the correct hierarchical order or to make sure that the inheritance is even sensible. A class is just a class,
 and types that are instances of this class really don't have to share some parent-child inheritance relationship. If your data type fulfills the requirements of a class,
 then it can be instantiated in that class.
 Simple, isn't it? Remember the QuickSort example? Remember that I said it was polymorphic?
 The secret behind the polymorphism in qsort is that it is defined to work on any type in the Ord type class (for "Ordered").
 Ord has a set of functions defined, among them is "<" and ">=" which are sufficient for our needs because we only need to know whether an element is smaller than x or not.
 So if we were to define the Ord functions for our Porsche type (it's sufficient to implement, say, <= and ==, Haskell will figure out the rest from those) in an instantiation of the Ord type class,
 we could then use qsort to sort lists of Porsches (even though sorting Porsches might not make sense).
 Note that we never say anything about which classes the elements of the list must be defined for,
 Haskell will infer this automatically from just looking at which functions we have used (in the qsort example, only "<" and ">=" are relevant).


ポリモフィズムは型クラスと呼ばれるものの使用で完了しています. さて,
 もしあなたのバックグラウンドが C++ や Java ならオブジェクトを構成するためにテンプレートに似たなにかに型クラスを結びつけようとするかもしれませんが,
 しかしそれ Haskell においてそれらが意味することではありません. Haskell における型クラスはまさしく字の如くです.
 それはある型がその型クラスのインスタンスかどうかを決定するルールセットです. Haskell はクラスへのインスタンス化とデータ型の構築を分けています.
 "Porsche" 型を定義したとして, それは "Car" 型クラスのインスタンスとした場合､
 そのほかの "Car" 型クラスのメンバーに適用できる全ての関数は Porsche にも同様に適用できます.
 Haskell に含まれるクラスとして Show 型クラスがあります, Show 型クラスのインタンスになるにはデータを String に変換する show 関数を提供すればなれます.
 結果的にほとんどすべての Haskell の型は そのデータから String に変換する show 関数を適用し, それから
 関連する IO アクションを使用して(より多くは IO のチュートリアルをっ参照)スクリーン上に出力することができます.
 ポリモーフィズムの側面に関して言えばオブジェクト指向言語のオブジェクトとどれほどにているかに注意してください.
 Haskell のシステムはポリモーフィズムを扱う上でより直感的です.
 継承の階層関係が正しいかや継承が妥当かなどを気にかける必要はありません. クラスはただクラスであり,
 クラスのインスタンスの型は継承の親子関係を気にする必要はありません. クラスの要求を全て満たしていさえすれば,
 そのクラスのインスタンスになることができます. 
 シンプル, そうではないですか? クイックソートの例を覚えていますか? それはポリモーフィックになっていると言ったことを覚えていますか?
 クイックソートのポリモーフィックの裏に隠されているものは Ord 型(順序関係がるということです)クラスのいずれの型でも働くよう定義されているということです.
 Ord は定義された関数群を持っています, 私達の要望を満足する "<" や ">=" などです, なぜなら必要なことは要素が x より小さいか否かということを判定したいだけなので.
 そしてもし Ord 型クラスのインスタンス化のため Porsche 型の Ord 関数を定義すれば(< と == を実装すれば十分です, Haskell はそれらから残りを理解するでしょう),
 Porsche のリストをソートするために qsort を使用できます(Porsche をソートするのは意味がないかもしれませんが).
 リストの要素がどのクラスに対して定義されなければならないかについて何も言及していないことに注意してください.
 Haskell はどの関数を使用しているかを見て自動的に推論するでしょう(qsort の例で言えば, "<" や ">=" が関連します)


So to summarize: Haskell does include mechanisms for data encapsulation that match or surpass those of OOP languages.
 The only thing Haskell does not provide is a way to group functions and data together into a single "object" (aside from creating a data type which includes a function - remember, functions are data!).
 This is, however, a very minor problem. To apply a function to an object you would write "func obj a b c" instead of something like "obj.func a b c". 

そして要約すると: Haskell オブジェクト指向言語と同等かそれをしのぐデータカプセル化のメカニズムを含んでいます.
 Haskell が提供しない唯一のことは関数とデータをひとつの "object" にグループ化する方法です(データの生成には関数も含まれるということは置いておいて - 思い出してください, 関数はデータです!).
 これは, しかしながら, とてもマイナーな問題です. 関数をオブジェクトに適用するには "obj.func a b c" と書くかわりに "func obj a b c" と書きます.


```
