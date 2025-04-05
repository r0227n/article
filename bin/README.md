# CLIツール

## CLIのビルド

```bash
# gen_article
dart compile exe ../cli/gen_article/bin/gen_article.dart -o gen_article
```

## gen_articleについて

gen_articleは記事作成を支援するCLIツールです。テンプレートを基に新しい記事ファイルを作成し、日付、タイトル、絵文字、トピックなどを指定できます。

### 機能

- テンプレートファイルを基に新しい記事ファイルを作成
- 指定された日付、タイトル、絵文字、トピックで記事を作成
- デフォルトでは現在の日付で記事を作成
- 記事の種類（月次/週次/日次）を指定可能
- ランダムな絵文字の自動設定
- 公開状態の指定

### 詳細オプション

```bash
# 完全なオプション指定の例
./gen_article \
  --title "Flutterアプリ開発入門" \
  --date "2025-01-01" \
  --emoji "🚀" \
  --type "weekly" \
  --topics "Flutter,Dart,モバイル開発" \
  --published
```

| オプション | 短縮形 | 説明 | デフォルト値 |
|----------|-------|------|------------|
| `--title` | `-t` | 記事のタイトル | - |
| `--date` | `-d` | 記事の日付（YYYY-MM-DD形式） | 現在の日付 |
| `--emoji` | `-e` | 記事に表示される絵文字 | ランダムに選択 |
| `--type` | - | 記事の種類（monthly/weekly/daily） | weekly |
| `--topics` | `-p` | 記事のトピック（カンマ区切りで指定） | [] |
| `--published` | - | 公開状態 | false |
| `--help` | `-h` | ヘルプを表示 | - |

記事は `articles/YYYY/MM/YYYY-MM-DD.md` の形式で保存されます。
