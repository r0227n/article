// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleMeta {

 int get year; int get count; DateTime get lastUpdated; List<Article> get articles;
/// Create a copy of ArticleMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleMetaCopyWith<ArticleMeta> get copyWith => _$ArticleMetaCopyWithImpl<ArticleMeta>(this as ArticleMeta, _$identity);

  /// Serializes this ArticleMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleMeta&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'ArticleMeta(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $ArticleMetaCopyWith<$Res>  {
  factory $ArticleMetaCopyWith(ArticleMeta value, $Res Function(ArticleMeta) _then) = _$ArticleMetaCopyWithImpl;
@useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<Article> articles
});




}
/// @nodoc
class _$ArticleMetaCopyWithImpl<$Res>
    implements $ArticleMetaCopyWith<$Res> {
  _$ArticleMetaCopyWithImpl(this._self, this._then);

  final ArticleMeta _self;
  final $Res Function(ArticleMeta) _then;

/// Create a copy of ArticleMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? count = null,Object? lastUpdated = null,Object? articles = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,articles: null == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ArticleMeta implements ArticleMeta {
  const _ArticleMeta({required this.year, required this.count, required this.lastUpdated, required final  List<Article> articles}): _articles = articles;
  factory _ArticleMeta.fromJson(Map<String, dynamic> json) => _$ArticleMetaFromJson(json);

@override final  int year;
@override final  int count;
@override final  DateTime lastUpdated;
 final  List<Article> _articles;
@override List<Article> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of ArticleMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleMetaCopyWith<_ArticleMeta> get copyWith => __$ArticleMetaCopyWithImpl<_ArticleMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleMeta&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'ArticleMeta(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$ArticleMetaCopyWith<$Res> implements $ArticleMetaCopyWith<$Res> {
  factory _$ArticleMetaCopyWith(_ArticleMeta value, $Res Function(_ArticleMeta) _then) = __$ArticleMetaCopyWithImpl;
@override @useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<Article> articles
});




}
/// @nodoc
class __$ArticleMetaCopyWithImpl<$Res>
    implements _$ArticleMetaCopyWith<$Res> {
  __$ArticleMetaCopyWithImpl(this._self, this._then);

  final _ArticleMeta _self;
  final $Res Function(_ArticleMeta) _then;

/// Create a copy of ArticleMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? count = null,Object? lastUpdated = null,Object? articles = null,}) {
  return _then(_ArticleMeta(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Article>,
  ));
}


}


/// @nodoc
mixin _$Article {

 String get filePath; int get year; int get month; int get day; String get title; String get emoji; String get type; List<String> get topics;
/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleCopyWith<Article> get copyWith => _$ArticleCopyWithImpl<Article>(this as Article, _$identity);

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Article&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day)&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,year,month,day,title,emoji,type,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'Article(filePath: $filePath, year: $year, month: $month, day: $day, title: $title, emoji: $emoji, type: $type, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $ArticleCopyWith<$Res>  {
  factory $ArticleCopyWith(Article value, $Res Function(Article) _then) = _$ArticleCopyWithImpl;
@useResult
$Res call({
 String filePath, int year, int month, int day, String title, String emoji, String type, List<String> topics
});




}
/// @nodoc
class _$ArticleCopyWithImpl<$Res>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._self, this._then);

  final Article _self;
  final $Res Function(Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = null,Object? year = null,Object? month = null,Object? day = null,Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,}) {
  return _then(_self.copyWith(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Article extends Article {
  const _Article({required this.filePath, required this.year, required this.month, required this.day, required this.title, required this.emoji, required this.type, required final  List<String> topics}): _topics = topics,super._();
  factory _Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

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


/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleCopyWith<_Article> get copyWith => __$ArticleCopyWithImpl<_Article>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Article&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&(identical(other.day, day) || other.day == day)&&(identical(other.title, title) || other.title == title)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,year,month,day,title,emoji,type,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'Article(filePath: $filePath, year: $year, month: $month, day: $day, title: $title, emoji: $emoji, type: $type, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) _then) = __$ArticleCopyWithImpl;
@override @useResult
$Res call({
 String filePath, int year, int month, int day, String title, String emoji, String type, List<String> topics
});




}
/// @nodoc
class __$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(this._self, this._then);

  final _Article _self;
  final $Res Function(_Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? year = null,Object? month = null,Object? day = null,Object? title = null,Object? emoji = null,Object? type = null,Object? topics = null,}) {
  return _then(_Article(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
