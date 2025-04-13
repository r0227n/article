import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_metadata_dto.freezed.dart';
part 'index_metadata_dto.g.dart';

@freezed
sealed class IndexFileDto with _$IndexFileDto {
  const factory IndexFileDto({
    required DateTime lastUpdated,
    required List<IndexMetadataDto> indexes,
  }) = _IndexFile;

  factory IndexFileDto.fromJson(Map<String, dynamic> json) =>
      _$IndexFileDtoFromJson(json);
}

@freezed
sealed class IndexMetadataDto with _$IndexMetadataDto {
  const factory IndexMetadataDto({
    required int year,
    required int month,
    required int count,
    required String path,
    required DateTime lastUpdated,
  }) = _IndexMetadataDto;

  factory IndexMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$IndexMetadataDtoFromJson(json);
}
