// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_metadata_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
IndexFileDto _$IndexFileDtoFromJson(
  Map<String, dynamic> json
) {
    return _IndexFile.fromJson(
      json
    );
}

/// @nodoc
mixin _$IndexFileDto {

 List<IndexMetadataDto> get indexes;
/// Create a copy of IndexFileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexFileDtoCopyWith<IndexFileDto> get copyWith => _$IndexFileDtoCopyWithImpl<IndexFileDto>(this as IndexFileDto, _$identity);

  /// Serializes this IndexFileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexFileDto&&const DeepCollectionEquality().equals(other.indexes, indexes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(indexes));

@override
String toString() {
  return 'IndexFileDto(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class $IndexFileDtoCopyWith<$Res>  {
  factory $IndexFileDtoCopyWith(IndexFileDto value, $Res Function(IndexFileDto) _then) = _$IndexFileDtoCopyWithImpl;
@useResult
$Res call({
 List<IndexMetadataDto> indexes
});




}
/// @nodoc
class _$IndexFileDtoCopyWithImpl<$Res>
    implements $IndexFileDtoCopyWith<$Res> {
  _$IndexFileDtoCopyWithImpl(this._self, this._then);

  final IndexFileDto _self;
  final $Res Function(IndexFileDto) _then;

/// Create a copy of IndexFileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? indexes = null,}) {
  return _then(_self.copyWith(
indexes: null == indexes ? _self.indexes : indexes // ignore: cast_nullable_to_non_nullable
as List<IndexMetadataDto>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IndexFile implements IndexFileDto {
  const _IndexFile({required final  List<IndexMetadataDto> indexes}): _indexes = indexes;
  factory _IndexFile.fromJson(Map<String, dynamic> json) => _$IndexFileFromJson(json);

 final  List<IndexMetadataDto> _indexes;
@override List<IndexMetadataDto> get indexes {
  if (_indexes is EqualUnmodifiableListView) return _indexes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_indexes);
}


/// Create a copy of IndexFileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexFileCopyWith<_IndexFile> get copyWith => __$IndexFileCopyWithImpl<_IndexFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexFile&&const DeepCollectionEquality().equals(other._indexes, _indexes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_indexes));

@override
String toString() {
  return 'IndexFileDto(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class _$IndexFileCopyWith<$Res> implements $IndexFileDtoCopyWith<$Res> {
  factory _$IndexFileCopyWith(_IndexFile value, $Res Function(_IndexFile) _then) = __$IndexFileCopyWithImpl;
@override @useResult
$Res call({
 List<IndexMetadataDto> indexes
});




}
/// @nodoc
class __$IndexFileCopyWithImpl<$Res>
    implements _$IndexFileCopyWith<$Res> {
  __$IndexFileCopyWithImpl(this._self, this._then);

  final _IndexFile _self;
  final $Res Function(_IndexFile) _then;

/// Create a copy of IndexFileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? indexes = null,}) {
  return _then(_IndexFile(
indexes: null == indexes ? _self._indexes : indexes // ignore: cast_nullable_to_non_nullable
as List<IndexMetadataDto>,
  ));
}


}


/// @nodoc
mixin _$IndexMetadataDto {

 int get year; int get month; int get count; String get path;
/// Create a copy of IndexMetadataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexMetadataDtoCopyWith<IndexMetadataDto> get copyWith => _$IndexMetadataDtoCopyWithImpl<IndexMetadataDto>(this as IndexMetadataDto, _$identity);

  /// Serializes this IndexMetadataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexMetadataDto&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.count, count) || other.count == count)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,count,path);

@override
String toString() {
  return 'IndexMetadataDto(year: $year, month: $month, count: $count, path: $path)';
}


}

/// @nodoc
abstract mixin class $IndexMetadataDtoCopyWith<$Res>  {
  factory $IndexMetadataDtoCopyWith(IndexMetadataDto value, $Res Function(IndexMetadataDto) _then) = _$IndexMetadataDtoCopyWithImpl;
@useResult
$Res call({
 int year, int month, int count, String path
});




}
/// @nodoc
class _$IndexMetadataDtoCopyWithImpl<$Res>
    implements $IndexMetadataDtoCopyWith<$Res> {
  _$IndexMetadataDtoCopyWithImpl(this._self, this._then);

  final IndexMetadataDto _self;
  final $Res Function(IndexMetadataDto) _then;

/// Create a copy of IndexMetadataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? month = null,Object? count = null,Object? path = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IndexMetadataDto implements IndexMetadataDto {
  const _IndexMetadataDto({required this.year, required this.month, required this.count, required this.path});
  factory _IndexMetadataDto.fromJson(Map<String, dynamic> json) => _$IndexMetadataDtoFromJson(json);

@override final  int year;
@override final  int month;
@override final  int count;
@override final  String path;

/// Create a copy of IndexMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexMetadataDtoCopyWith<_IndexMetadataDto> get copyWith => __$IndexMetadataDtoCopyWithImpl<_IndexMetadataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexMetadataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexMetadataDto&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.count, count) || other.count == count)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,count,path);

@override
String toString() {
  return 'IndexMetadataDto(year: $year, month: $month, count: $count, path: $path)';
}


}

/// @nodoc
abstract mixin class _$IndexMetadataDtoCopyWith<$Res> implements $IndexMetadataDtoCopyWith<$Res> {
  factory _$IndexMetadataDtoCopyWith(_IndexMetadataDto value, $Res Function(_IndexMetadataDto) _then) = __$IndexMetadataDtoCopyWithImpl;
@override @useResult
$Res call({
 int year, int month, int count, String path
});




}
/// @nodoc
class __$IndexMetadataDtoCopyWithImpl<$Res>
    implements _$IndexMetadataDtoCopyWith<$Res> {
  __$IndexMetadataDtoCopyWithImpl(this._self, this._then);

  final _IndexMetadataDto _self;
  final $Res Function(_IndexMetadataDto) _then;

/// Create a copy of IndexMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,Object? count = null,Object? path = null,}) {
  return _then(_IndexMetadataDto(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
