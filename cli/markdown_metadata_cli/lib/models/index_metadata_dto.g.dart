// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_metadata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IndexFile _$IndexFileFromJson(Map<String, dynamic> json) => _IndexFile(
  indexes:
      (json['indexes'] as List<dynamic>)
          .map((e) => IndexMetadataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$IndexFileToJson(_IndexFile instance) =>
    <String, dynamic>{'indexes': instance.indexes};

_IndexMetadataDto _$IndexMetadataDtoFromJson(Map<String, dynamic> json) =>
    _IndexMetadataDto(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$IndexMetadataDtoToJson(_IndexMetadataDto instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'count': instance.count,
      'path': instance.path,
    };
