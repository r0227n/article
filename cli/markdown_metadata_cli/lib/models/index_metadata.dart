import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_metadata.freezed.dart';
part 'index_metadata.g.dart';

@freezed
sealed class IndexFile with _$IndexFile {
  const factory IndexFile({required List<IndexMetadata> indexes}) = _IndexFile;

  factory IndexFile.fromJson(Map<String, dynamic> json) =>
      _$IndexFileFromJson(json);
}

@freezed
sealed class IndexMetadata with _$IndexMetadata {
  const factory IndexMetadata({
    required int year,
    required int month,
    required int count,
    required String path,
  }) = _IndexMetadata;

  factory IndexMetadata.fromJson(Map<String, dynamic> json) =>
      _$IndexMetadataFromJson(json);
}
