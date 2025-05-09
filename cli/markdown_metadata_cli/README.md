# Markdown Metadata CLI

このCLIツールは、Markdown記事のメタデータを抽出し、年ごとのJSONファイルとして保存します。

## 主な機能

- Markdown記事からフロントマターを抽出
- ファイルパスから年月日情報を抽出（`articles/YYYY/MM/YYYY-MM-DD_title.md`形式に対応）
- 年ごとのJSONファイルを生成
- インデックスファイルを生成

## 使い方

### 基本的な使用方法
```bash
dart bin/markdown_metadata_cli.dart --files path/to/article1.md path/to/article2.md --output assets/metadata
```

### オプション

| オプション | 短縮形 | 説明 |
|----------|-------|------|
| `--files` | `-f` | `articles/` ディレクトリのMarkdownファイルのパスを指定 (カンマ区切りで複数指定可) |
| `--output` | `-o` | メタデータJSONファイルの出力先ディレクトリ |

## 出力ファイル

### `index.json`

`index.json` ファイルは、すべての年別JSONファイルのメタデータを含むインデックスファイルです。このファイルには、各年のメタデータがリスト形式で格納されます。

```json
{
  "indexes": [
    {
      "year": 2025,
      "month": 1,
      "count": 1,
      "path": "2025.json"
    }
  ]
}
```

### 年別JSONファイル (`YYYY.json`)

各年ごとに、その年のすべての記事のメタデータを含むJSONファイルが生成されます。

```json
{
  "year": 2025,
  "count": 120,
  "lastUpdated": "2025-04-05T10:30:00Z",
  "articles": [
    {
      "filePath": "articles/2025/04/2025-04-01.md",
      "year": 2025,
      "month": 4,
      "day": 1,
      "title": "記事タイトル",
      "emoji": "🚀",
      "type": "daily",
      "topics": ["Flutter", "Dart"],
      "published": true
    },
    // その年の他の記事...
  ]
}
```

## 注意事項

- 処理対象のMarkdownファイルには、YAMLフロントマターが必要です
- ファイルパスは `articles/YYYY/MM/YYYY-MM-DD_title.md` 形式である必要があります
