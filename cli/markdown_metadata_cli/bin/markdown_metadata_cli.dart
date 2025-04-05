import 'dart:io';

import 'package:args/args.dart';
import 'package:markdown_metadata_cli/markdown_metadata_cli.dart' as markdown_metadata_cli;

Future<void> main(List<String> arguments) async {
  // コマンドライン引数の解析
  final parser =
      ArgParser()
        ..addOption('files', abbr: 'f', help: 'Markdown files to process (comma-separated)')
        ..addOption('output', abbr: 'o', help: 'Output directory for metadata files');

  late final ArgResults args;
  try {
    args = parser.parse(arguments);
  } catch (e) {
    stderr.writeln(parser.usage);
    exit(1);
  }

  final String filesArg = args['files'] as String? ?? (throw ArgumentError('--files オプションは必須です'));
  final List<String> files = filesArg.split(',').where((path) => path.isNotEmpty).toList();
  final String outputDir =
      args['output'] as String? ?? (throw ArgumentError('--output オプションは必須です'));

  if (files.isEmpty) {
    stderr.writeln('エラー: 少なくとも1つのファイルパスが必要です');
    stderr.writeln(parser.usage);
    exit(1);
  }

  await markdown_metadata_cli.processMarkdownFiles(files, outputDir);
}
