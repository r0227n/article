// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleMetadata {

 String get filePath; int get year; int get month; int get day; String get title; String get emoji; String get type; List<String> get topics; bool get published;
/// Create a copy of ArticleMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleMetadataCopyWith<ArticleMetadata> get copyWith => _$ArticleMetadataCopyWithImpl<ArticleMetadata>(this as ArticleMetadata, _$identity);

  /// Serializes this ArticleMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleMetadata&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day)&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.published, published) || other.published == published));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,year,month,day,title,emoji,type,const DeepCollectionEquality().hash(topics),published);

@override
String toString() {
  return 'ArticleMetadata(filePath: $filePath, year: $year, month: $month, day: $day, title: $title, emoji: $emoji, type: $type, topics: $topics, published: $published)';
}


}

/// @nodoc
abstract mixin class $ArticleMetadataCopyWith<$Res>  {
  factory $ArticleMetadataCopyWith(ArticleMetadata value, $Res Function(ArticleMetadata) _then) = _$ArticleMetadataCopyWithImpl;
@useResult
$Res call({
 String filePath, int year, int month, int day, String title, String emoji, String type, List<String> topics, bool published
});




}
/// @nodoc
class _$ArticleMetadataCopyWithImpl<$Res>
    implements $ArticleMetadataCopyWith<$Res> {
  _$ArticleMetadataCopyWithImpl(this._self, this._then);

  final ArticleMetadata _self;
  final $Res Function(ArticleMetadata) _then;

/// Create a copy of ArticleMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = null,Object? year = null,Object? month = null,Object? day = null,Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,Object? published = null,}) {
  return _then(_self.copyWith(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ArticleMetadata implements ArticleMetadata {
  const _ArticleMetadata({required this.filePath, required this.year, required this.month, required this.day, required this.title, required this.emoji, required this.type, required final  List<String> topics, required this.published}): _topics = topics;
  factory _ArticleMetadata.fromJson(Map<String, dynamic> json) => _$ArticleMetadataFromJson(json);

@override final  String filePath;
@override final  int year;
@override final  int month;
@override final  int day;
@override final  String title;
@override final  String emoji;
@override final  String type;
 final  List<String> _topics;
@override List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

@override final  bool published;

/// Create a copy of ArticleMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleMetadataCopyWith<_ArticleMetadata> get copyWith => __$ArticleMetadataCopyWithImpl<_ArticleMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleMetadata&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day)&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.published, published) || other.published == published));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,year,month,day,title,emoji,type,const DeepCollectionEquality().hash(_topics),published);

@override
String toString() {
  return 'ArticleMetadata(filePath: $filePath, year: $year, month: $month, day: $day, title: $title, emoji: $emoji, type: $type, topics: $topics, published: $published)';
}


}

/// @nodoc
abstract mixin class _$ArticleMetadataCopyWith<$Res> implements $ArticleMetadataCopyWith<$Res> {
  factory _$ArticleMetadataCopyWith(_ArticleMetadata value, $Res Function(_ArticleMetadata) _then) = __$ArticleMetadataCopyWithImpl;
@override @useResult
$Res call({
 String filePath, int year, int month, int day, String title, String emoji, String type, List<String> topics, bool published
});




}
/// @nodoc
class __$ArticleMetadataCopyWithImpl<$Res>
    implements _$ArticleMetadataCopyWith<$Res> {
  __$ArticleMetadataCopyWithImpl(this._self, this._then);

  final _ArticleMetadata _self;
  final $Res Function(_ArticleMetadata) _then;

/// Create a copy of ArticleMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? year = null,Object? month = null,Object? day = null,Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,Object? published = null,}) {
  return _then(_ArticleMetadata(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
