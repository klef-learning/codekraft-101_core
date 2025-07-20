# CodeKraft #101 : Core

## Abstract /  概要

本リポジトリは、Klef Learning の制作するプログラミングの基礎テキスト「CodeKraft」シリーズの基礎編「ソフトウェア開発の地図 - 複数言語で学ぶプログラミングの基礎」の原稿および資料を管理するものです。

This repository hosts the source file and documents for "CodeKraft #101 : A Map of Software Development - Core Programming Concepts Across Languages", CodeKraft educational book series by Klef Learning.

## Build / ビルド方法

### Nix

```sh
nix build
```

### Typst CLI

```sh
typst compile typst/main.typ output/codekraft-101_core.pdf
```

## Table of Contents / 目次

- はじめに（2ページ）

- 第0章 開発環境の準備（8ページ）
  - 0.1 教材で扱う言語とツールの一覧
  - 0.2 DockerまたはNixによる統一環境構築
  - 0.3 各言語の実行と確認方法（Python, C, Rust…）
  - 0.4 推奨エディタと開発ツール（VS Code + LSP など）

- 第1章 プログラミングとは何か（6ページ）
  - 1.1 プログラムの定義と役割
  - 1.2 ソフトウェアとハードウェアの関係
  - 1.3 コンピュータの動作と命令

- 第2章 変数とデータ（10ページ）
  - 2.1 変数と定数
  - 2.2 データ型の概念
  - 2.3 型と安全性
  - 2.4 スコープとライフタイム

- 第3章 制御構造（10ページ）
  - 3.1 条件分岐
  - 3.2 繰り返し処理
  - 3.3 パターンマッチと分岐
  - 3.4 制御構文の比較

- 第4章 関数と構造化（10ページ）
  - 4.1 関数の定義と呼び出し
  - 4.2 再帰とループ
  - 4.3 引数と戻り値
  - 4.4 スコープと副作用

- 第5章 データ構造と抽象化（10ページ）
  - 5.1 配列とリスト
  - 5.2 辞書と集合
  - 5.3 構造体・クラス・レコード
  - 5.4 データ構造の選択と設計

- 第6章 型システムと安全性（10ページ）
  - 6.1 静的型と動的型
  - 6.2 型推論とコンパイラ
  - 6.3 型によるバグの防止
  - 6.4 型と抽象データ型（ADT）

- 第7章 関数型プログラミング入門（10ページ）
  - 7.1 イミュータブルな値と式
  - 7.2 高階関数とカリー化
  - 7.3 パターンマッチと代数的データ型
  - 7.4 モナドと副作用制御（入門）

- 第8章 Gitと開発の基本（8ページ）
  - 8.1 バージョン管理とは
  - 8.2 Gitの基本操作
  - 8.3 コミットとブランチ
  - 8.4 チームでのGit運用入門

- 第9章 開発スタイルとテスト（8ページ）
  - 9.1 TDDとテストの基本
  - 9.2 CDDと振る舞い主導設計
  - 9.3 静的解析とCI入門
  - 9.4 ドキュメントと仕様の整備

- 第10章 多言語プログラミングと選択（10ページ）
  - 10.1 言語の特徴と選び方
  - 10.2 同じ機能を複数言語で書く
  - 10.3 ツールチェーンとビルドの違い
  - 10.4 言語思想と設計の比較

- 索引・用語集（3ページ）
- 奥付・ライセンス（1ページ）


## License / ライセンス

This work is licensed under a **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0)**.

本作品は、**クリエイティブ・コモンズ 表示-非営利-継承 4.0 国際ライセンス**のもとで提供されています。

(c) 2025 Klef Learning CodeKraft Team
