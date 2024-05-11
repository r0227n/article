---
title: "【Flutter】多言語化対応のいろは（仮）"
emoji: "🌍"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: ["Flutter", "i18n"]
published: false
---

## Info.plist(iOS&macOSのネイティブAPI処理形)の多言語化対応

`Info.plist`は、デバイスの機能に対するアクセス許可やアプリの表示名などを記述する設定ファイルです。本節はデバイスの言語設定に連動し、設定ファイルから参照される値を変更する方法について説明します。

最初に以下のコマンドをプロジェクトのルートディレクトリで実行し、Xcodeを起動します。

```bash
open ios/Runner.xcworkspace/
```

続いて`⌘+N`(新規ファイル作成ショートカットキー)を押下し、右上の`Filter`に「String」と入力し、**String Catalog**を見つけ選択し、**InfoPlist.xcstrings**ファイルを作成する。
最後に多言語化対象を追加します。画面左下の「＋」アイコンを押下し、対象の言語を選択することにより、多言語化対応の対象を追加することができます。

以上で`Info.plist`の`<value>`を変更する準備は整いました。
あとは

1. 一度プロジェクトを実行する
2. 1を実行すると、自動で`Info.plist`のkey/valueが`InfoPlist.xcstrings`に反映される
3. 2で反映された内容を編集し、言語ごとの表示内容を編集する

以上で多言語化作業が完了します。
