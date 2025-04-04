# Gen Article

記事作成を支援するCLIツールです。

## 機能

- テンプレートファイルを基に新しい記事ファイルを作成
- 指定された日付、タイトル、絵文字、トピックで記事を作成
- デフォルトでは現在の日付で記事を作成
- 記事の種類（月次/週次/日次）を指定可能
- ランダムな絵文字の自動設定
- 公開状態の指定

## 使用方法

### 基本的な使用方法

```bash
# 基本的な使い方
dart run bin/gen_article.dart --title "記事のタイトル"

# 完全なオプション指定の例
dart run bin/gen_article.dart \
  --title "Flutterアプリ開発入門" \
  --date "2025-01-01" \
  --emoji "🚀" \
  --type "weekly" \
  --topics "Flutter,Dart,モバイル開発" \
  --published
```

### オプション

| オプション | 短縮形 | 説明 | デフォルト値 |
|----------|-------|------|------------|
| `--title` | `-t` | 記事のタイトル | - |
| `--date` | `-d` | 記事の日付（YYYY-MM-DD形式） | 現在の日付 |
| `--emoji` | `-e` | 記事に表示される絵文字 | ランダムに選択 |
| `--type` | - | 記事の種類（monthly/weekly/daily） | weekly |
| `--topics` | `-p` | 記事のトピック（カンマ区切りで指定） | [] |
| `--published` | - | 公開状態 | false |
| `--help` | `-h` | ヘルプを表示 | - |

### 出力先

記事は `articles/YYYY/MM/YYYY-MM-DD_title.md` の形式で保存されます。

### テンプレート

記事は `templates/article_template.md` テンプレートを使用して作成されます。テンプレートには以下の項目があります：

- title: 記事のタイトル
- emoji: 記事に表示される絵文字
- type: 記事の種類（monthly/weekly/daily）
- topics: 記事のトピック
- published: 公開状態

## エラー処理

- すでに同じ日付の記事が存在する場合はエラーが表示されます
- 日付のフォーマットが無効な場合はエラーが表示されます（YYYY-MM-DD形式で指定してください）
