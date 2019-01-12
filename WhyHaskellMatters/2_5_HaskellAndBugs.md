# Why Haskell matters
なぜHaskellなのか

# 出典
https://wiki.haskell.org/Why\_Haskell\_matters

### 2.5 Haskell and bugs

```
We have several times stated that various features of Haskell help fight the occurrence of bugs. Let's recap these.
 Haskell programs have fewer bugs because Haskell is:

    Pure. There are no side effects. 

    Strongly typed. There can be no dubious use of types. And No Core Dumps! 

    Concise. Programs are shorter which make it easier to look at a function and "take it all in" at once, convincing yourself that it's correct. 

    High level. Haskell programs most often reads out almost exactly like the algorithm description.
     Which makes it easier to verify that the function does what the algorithm states.
     By coding at a higher level of abstraction, leaving the details to the compiler, there is less room for bugs to sneak in. 

    Memory managed. There's no worrying about dangling pointers, the Garbage Collector takes care of all that.
     The programmer can worry about implementing the algorithm, not book-keeping of the memory. 

    Modular. Haskell offers stronger and more "glue" to compose your program from already developed modules.
     Thus Haskell programs can be more modular.
     Often used modular functions can thus be proven correct by induction.
     Combining two functions that are proven to be correct, will also give the correct result (assuming the combination is correct). 

↓↓↓↓↓↓↓↓↓↓↓↓↓
↓↓↓↓ NEXT ↓↓↓↓↓↓
↓↓↓↓↓↓↓↓↓↓↓↓↓
Furthermore most people agree that you just think differently when solving problems in a functional language.
 You subdivide the problem into smaller and smaller functions and then you write these small (and "almost-guaranteed-to-be-correct") functions,
 which are composed in various ways to the final result.
 There just isn't any room for bugs!
```

```
私達は度々説明しました Haskell のいくつかの特徴がバグの発生との戦いの助けとなることを.振り返ってみましょう.
 Haskell プログラムは僅かなバグを持ちますなぜなら Haskell は

    純粋. 副作用はありません

    強い型付け. 曖昧な型の使い方はありません. そしてコアダンプはありません!

    簡潔. プログラムが短いことは関数をひと目で見れ,一度で全てを把握できます,あなた自身でそれが正しいことを確信できます.

    高水準. Haskell のプログラムはよく読まれますアルゴリズムの説明として.
        それにより確認をより簡単にします関数がアルゴリズムの説明のとおりであるということを.
        コーディングが高度に抽象化されていることや, コンパイラに細部を任せることで,バグが潜む余地をより少なくします.

    メモリ管理. ポインタのぶら下がりの心配はありません, ガーベージコレクタがそれらを全てケアしてくれます.
        プログラマはアルゴリズムの実装のみを気にかけることができます, メモリのブックキーピングではなく.

    モジュラー. Haskell は提供しますより強いノリを既に開発されたモジュールからあなたのプログラムを構築するための.
        故に Haskell プログラムはモジュラーになる傾向にあります.
        度々使用されるモジュラー関数はそれ故に帰納法により正しいことを証明されます.
        正しいことが証明された2つの関数の結合は正しい結果もまた返してくれます(結合が正しいと仮定して)

```