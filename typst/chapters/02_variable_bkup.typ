#pagebreak()

= 2 型とは

では，変数の型と聞いたら何を思いうかべるだろうか． \
「アルファベットとか数字とか？ 」と思った方，ご名答．言語によって少々異なるが，考えかたとしてはほぼ正解である．

*型 (Type)*とは，*プログラム上で取り扱われる値が，どのようなもので，どのような範囲で変動し，どの程度のメモリを確保しなければならないかを示すもの*である．大抵の言語に存在する有名な型をいくつか列挙する．

#align(center, table(
    columns: 3,
    align: start,
    table.header(
        [型], [値], [言語等]
    ),
    "int", "整数値", "C/C++, C#, Java, Goなど",
    "float", "小数値", "同上",
    "bool / boolean", "真偽値(True or False)", "上記 + TypeScript, Rustなど",
    "number", "数値", "TypeScriptなど",
    "char", "文字", "C/C++, Java, C#など",
    "string / str", "文字列", "TypeScript, C#, Rust, Goなど",
    "date", "日付", "TypeScript, C++, Goなど",
    "time", "時刻，時間", "同上"
))

また，変数を宣言する際に，型を併記することを*型注釈 (Type Annotation)*という．

さて，この「型」だが，内部的にはすべての言語がもつものであるが，一部の言語ではプログラム中に型を書かない．このような言語は，実行時に値の型が動的に決まることから*動的型付け言語 (Dynamic Typed Language)*という．逆に，プログラム中に型注釈などの形で型をひとつひとつ定義する形の言語のことを*静的型付け言語 (Static Typed Language)*という．

静的型付け言語と動的型付け言語のどちらがよいかという論争は，エディタ戦争と同等またはそれ以上に深刻なテーマであるため，本書ではその結論を示さない．ただし，一般に，静的型付け言語のほうが安全なソフトウェアが構築しやすいといわれている．

昨今のトレンドとして，動的型付け言語に静的型付けを部分的に取りいれたスーパーセットを作成しようというものがあり，その代表格がTypeScriptである．このため，TypeScriptには，型を指定せず，どのような値でも動的にメモリを確保して収容できる型「any」が存在する．ただし，anyは本質的には素のJavaScriptの変数と同じため，anyを多用するならばTypeScriptではなくJavaScriptを使うべきである，という意見も散見される．

では，ここで，Python (動的型付け)，Rust, C++, TypeScript (静的型付け) によるコードを比較してみよう． \
Rustはデフォルトでは変数への再代入はできないことに注意されたい．

Python
```python
a = 2
b = 4
print(a + b) # 6
c = a + b
c = c + 4
print(c) # 10
```

Rust
```rust
let a: i8 = 2;
let b: i8 = 4;
println!("{}", a + b); // 6
let mut c: i8 = a + b;
c = c + 4;
println!("{}", c); // 10
```

C++
```cpp
int a = 2;
int b = 4;
cout << a + b << endl; // 6
int c = a + b;
c = c + 4;
cout << c << endl; // 10
```

TypeScript
```ts
let a: number = 2;
let b: number = 4;
console.log(a + b); // 6
let c: number = a + b;
c = c + 4;
console.log(c); // 10
```

#pagebreak()

= 3 型推論とパース

一般に，静的型付け言語を用いる際には，型を明示しなければならないが，言語によっては型を明示しなくともコンパイラが推測してくれる場合がある．このことを*型推論 (Type inference)*という．中には，よっぽどのことがない限り型推論を原則とする言語 (Go) も存在する．

以下に，Goによるプログラムの例を示す．

```go
let a := 2;
let b := 4;
println(a + b);
let c := a + b;
c = c + 4;
println(c);
```

