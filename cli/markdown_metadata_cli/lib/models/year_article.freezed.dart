// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'year_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YearlyArticle {

 int get year; int get count; DateTime get lastUpdated; List<ArticleMetadata> get articles;
/// Create a copy of YearlyArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearlyArticleCopyWith<YearlyArticle> get copyWith => _$YearlyArticleCopyWithImpl<YearlyArticle>(this as YearlyArticle, _$identity);

  /// Serializes this YearlyArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearlyArticle&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'YearlyArticle(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $YearlyArticleCopyWith<$Res>  {
  factory $YearlyArticleCopyWith(YearlyArticle value, $Res Function(YearlyArticle) _then) = _$YearlyArticleCopyWithImpl;
@useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<ArticleMetadata> articles
});




}
/// @nodoc
class _$YearlyArticleCopyWithImpl<$Res>
    implements $YearlyArticleCopyWith<$Res> {
  _$YearlyArticleCopyWithImpl(this._self, this._then);

  final YearlyArticle _self;
  final $Res Function(YearlyArticle) _then;

/// Create a copy of YearlyArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? count = null,Object? lastUpdated = null,Object? articles = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,articles: null == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleMetadata>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _YearlyArticle implements YearlyArticle {
  const _YearlyArticle({required this.year, required this.count, required this.lastUpdated, required final  List<ArticleMetadata> articles}): _articles = articles;
  factory _YearlyArticle.fromJson(Map<String, dynamic> json) => _$YearlyArticleFromJson(json);

@override final  int year;
@override final  int count;
@override final  DateTime lastUpdated;
 final  List<ArticleMetadata> _articles;
@override List<ArticleMetadata> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of YearlyArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearlyArticleCopyWith<_YearlyArticle> get copyWith => __$YearlyArticleCopyWithImpl<_YearlyArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearlyArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearlyArticle&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'YearlyArticle(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$YearlyArticleCopyWith<$Res> implements $YearlyArticleCopyWith<$Res> {
  factory _$YearlyArticleCopyWith(_YearlyArticle value, $Res Function(_YearlyArticle) _then) = __$YearlyArticleCopyWithImpl;
@override @useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<ArticleMetadata> articles
});




}
/// @nodoc
class __$YearlyArticleCopyWithImpl<$Res>
    implements _$YearlyArticleCopyWith<$Res> {
  __$YearlyArticleCopyWithImpl(this._self, this._then);

  final _YearlyArticle _self;
  final $Res Function(_YearlyArticle) _then;

/// Create a copy of YearlyArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? count = null,Object? lastUpdated = null,Object? articles = null,}) {
  return _then(_YearlyArticle(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleMetadata>,
  ));
}


}

// dart format on
