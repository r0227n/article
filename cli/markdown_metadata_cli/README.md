# Markdown Metadata CLI

Markdown記事のメタデータを抽出し、年別のJSONファイルとして保存するCLIツールです。

## 主な機能

- Markdown記事からフロントマターを抽出
- ファイルパスから年月日情報を抽出（`article/YYYY/MM/YYYY-MM-DD_title.md`形式に対応）
- 年別のJSONファイルを生成
- インデックスファイルの生成

## 使い方

### 基本的な使用方法

```bash
dart bin/markdown_metadata_cli.dart --files path/to/article1.md path/to/article2.md --output assets/metadata
```

### オプション

| オプション | 短縮形 | 説明 |
|----------|-------|------|
| `--files` | `-f` | article/ ディレクトリのMarkdownファイルのパスを指定 (カンマ区切りで複数指定可) |
| `--output` | `-o` | メタデータJSONファイルの出力先ディレクトリ |

## 出力ファイル

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

### インデックスファイル (`index.json`)

すべての年の概要情報を含むJSONファイルが生成されます。

```json
{
  "lastUpdated": "2025-04-05T10:30:00Z",
  "years": [
    {
      "year": 2023,
      "count": 95,
      "months": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    },
    {
      "year": 2024,
      "count": 110,
      "months": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    },
    {
      "year": 2025,
      "count": 42,
      "months": [1, 2, 3, 4]
    }
  ],
}
```

## 注意事項

- 処理対象のMarkdownファイルには、YAMLフロントマターが必要です
- ファイルパスは `article/YYYY/MM/YYYY-MM-DD_title.md` 形式である必要があります
