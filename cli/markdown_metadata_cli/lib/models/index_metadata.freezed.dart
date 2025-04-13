// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndexFile {

 List<IndexMetadata> get indexes;
/// Create a copy of IndexFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexFileCopyWith<IndexFile> get copyWith => _$IndexFileCopyWithImpl<IndexFile>(this as IndexFile, _$identity);

  /// Serializes this IndexFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexFile&&const DeepCollectionEquality().equals(other.indexes, indexes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(indexes));

@override
String toString() {
  return 'IndexFile(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class $IndexFileCopyWith<$Res>  {
  factory $IndexFileCopyWith(IndexFile value, $Res Function(IndexFile) _then) = _$IndexFileCopyWithImpl;
@useResult
$Res call({
 List<IndexMetadata> indexes
});




}
/// @nodoc
class _$IndexFileCopyWithImpl<$Res>
    implements $IndexFileCopyWith<$Res> {
  _$IndexFileCopyWithImpl(this._self, this._then);

  final IndexFile _self;
  final $Res Function(IndexFile) _then;

/// Create a copy of IndexFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? indexes = null,}) {
  return _then(_self.copyWith(
indexes: null == indexes ? _self.indexes : indexes // ignore: cast_nullable_to_non_nullable
as List<IndexMetadata>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IndexFile implements IndexFile {
  const _IndexFile({required final  List<IndexMetadata> indexes}): _indexes = indexes;
  factory _IndexFile.fromJson(Map<String, dynamic> json) => _$IndexFileFromJson(json);

 final  List<IndexMetadata> _indexes;
@override List<IndexMetadata> get indexes {
  if (_indexes is EqualUnmodifiableListView) return _indexes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_indexes);
}


/// Create a copy of IndexFile
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
  return 'IndexFile(indexes: $indexes)';
}


}

/// @nodoc
abstract mixin class _$IndexFileCopyWith<$Res> implements $IndexFileCopyWith<$Res> {
  factory _$IndexFileCopyWith(_IndexFile value, $Res Function(_IndexFile) _then) = __$IndexFileCopyWithImpl;
@override @useResult
$Res call({
 List<IndexMetadata> indexes
});




}
/// @nodoc
class __$IndexFileCopyWithImpl<$Res>
    implements _$IndexFileCopyWith<$Res> {
  __$IndexFileCopyWithImpl(this._self, this._then);

  final _IndexFile _self;
  final $Res Function(_IndexFile) _then;

/// Create a copy of IndexFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? indexes = null,}) {
  return _then(_IndexFile(
indexes: null == indexes ? _self._indexes : indexes // ignore: cast_nullable_to_non_nullable
as List<IndexMetadata>,
  ));
}


}


/// @nodoc
mixin _$IndexMetadata {

 int get year; int get month; int get count; String get path;
/// Create a copy of IndexMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexMetadataCopyWith<IndexMetadata> get copyWith => _$IndexMetadataCopyWithImpl<IndexMetadata>(this as IndexMetadata, _$identity);

  /// Serializes this IndexMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexMetadata&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.count, count) || other.count == count)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,count,path);

@override
String toString() {
  return 'IndexMetadata(year: $year, month: $month, count: $count, path: $path)';
}


}

/// @nodoc
abstract mixin class $IndexMetadataCopyWith<$Res>  {
  factory $IndexMetadataCopyWith(IndexMetadata value, $Res Function(IndexMetadata) _then) = _$IndexMetadataCopyWithImpl;
@useResult
$Res call({
 int year, int month, int count, String path
});




}
/// @nodoc
class _$IndexMetadataCopyWithImpl<$Res>
    implements $IndexMetadataCopyWith<$Res> {
  _$IndexMetadataCopyWithImpl(this._self, this._then);

  final IndexMetadata _self;
  final $Res Function(IndexMetadata) _then;

/// Create a copy of IndexMetadata
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

class _IndexMetadata implements IndexMetadata {
  const _IndexMetadata({required this.year, required this.month, required this.count, required this.path});
  factory _IndexMetadata.fromJson(Map<String, dynamic> json) => _$IndexMetadataFromJson(json);

@override final  int year;
@override final  int month;
@override final  int count;
@override final  String path;

/// Create a copy of IndexMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexMetadataCopyWith<_IndexMetadata> get copyWith => __$IndexMetadataCopyWithImpl<_IndexMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndexMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexMetadata&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.count, count) || other.count == count)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,month,count,path);

@override
String toString() {
  return 'IndexMetadata(year: $year, month: $month, count: $count, path: $path)';
}


}

/// @nodoc
abstract mixin class _$IndexMetadataCopyWith<$Res> implements $IndexMetadataCopyWith<$Res> {
  factory _$IndexMetadataCopyWith(_IndexMetadata value, $Res Function(_IndexMetadata) _then) = __$IndexMetadataCopyWithImpl;
@override @useResult
$Res call({
 int year, int month, int count, String path
});




}
/// @nodoc
class __$IndexMetadataCopyWithImpl<$Res>
    implements _$IndexMetadataCopyWith<$Res> {
  __$IndexMetadataCopyWithImpl(this._self, this._then);

  final _IndexMetadata _self;
  final $Res Function(_IndexMetadata) _then;

/// Create a copy of IndexMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,Object? count = null,Object? path = null,}) {
  return _then(_IndexMetadata(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
