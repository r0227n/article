// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markdown_cotent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarkdownCotent {

 String get title; String get emoji; String get type; List<String> get topics; bool get published; String get content;
/// Create a copy of MarkdownCotent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkdownCotentCopyWith<MarkdownCotent> get copyWith => _$MarkdownCotentCopyWithImpl<MarkdownCotent>(this as MarkdownCotent, _$identity);

  /// Serializes this MarkdownCotent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkdownCotent&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.published, published) || other.published == published)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,emoji,type,const DeepCollectionEquality().hash(topics),published,content);

@override
String toString() {
  return 'MarkdownCotent(title: $title, emoji: $emoji, type: $type, topics: $topics, published: $published, content: $content)';
}


}

/// @nodoc
abstract mixin class $MarkdownCotentCopyWith<$Res>  {
  factory $MarkdownCotentCopyWith(MarkdownCotent value, $Res Function(MarkdownCotent) _then) = _$MarkdownCotentCopyWithImpl;
@useResult
$Res call({
 String title, String emoji, String type, List<String> topics, bool published, String content
});




}
/// @nodoc
class _$MarkdownCotentCopyWithImpl<$Res>
    implements $MarkdownCotentCopyWith<$Res> {
  _$MarkdownCotentCopyWithImpl(this._self, this._then);

  final MarkdownCotent _self;
  final $Res Function(MarkdownCotent) _then;

/// Create a copy of MarkdownCotent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,Object? published = null,Object? content = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MarkdownCotent implements MarkdownCotent {
  const _MarkdownCotent({required this.title, required this.emoji, required this.type, required final  List<String> topics, required this.published, required this.content}): _topics = topics;
  factory _MarkdownCotent.fromJson(Map<String, dynamic> json) => _$MarkdownCotentFromJson(json);

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
@override final  String content;

/// Create a copy of MarkdownCotent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkdownCotentCopyWith<_MarkdownCotent> get copyWith => __$MarkdownCotentCopyWithImpl<_MarkdownCotent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarkdownCotentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkdownCotent&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.published, published) || other.published == published)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,emoji,type,const DeepCollectionEquality().hash(_topics),published,content);

@override
String toString() {
  return 'MarkdownCotent(title: $title, emoji: $emoji, type: $type, topics: $topics, published: $published, content: $content)';
}


}

/// @nodoc
abstract mixin class _$MarkdownCotentCopyWith<$Res> implements $MarkdownCotentCopyWith<$Res> {
  factory _$MarkdownCotentCopyWith(_MarkdownCotent value, $Res Function(_MarkdownCotent) _then) = __$MarkdownCotentCopyWithImpl;
@override @useResult
$Res call({
 String title, String emoji, String type, List<String> topics, bool published, String content
});




}
/// @nodoc
class __$MarkdownCotentCopyWithImpl<$Res>
    implements _$MarkdownCotentCopyWith<$Res> {
  __$MarkdownCotentCopyWithImpl(this._self, this._then);

  final _MarkdownCotent _self;
  final $Res Function(_MarkdownCotent) _then;

/// Create a copy of MarkdownCotent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,Object? published = null,Object? content = null,}) {
  return _then(_MarkdownCotent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
