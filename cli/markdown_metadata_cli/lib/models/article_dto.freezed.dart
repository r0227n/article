// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YearlyArticleDto {

 int get year; int get count; DateTime get lastUpdated; List<ArticleMetadata> get articles;
/// Create a copy of YearlyArticleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearlyArticleDtoCopyWith<YearlyArticleDto> get copyWith => _$YearlyArticleDtoCopyWithImpl<YearlyArticleDto>(this as YearlyArticleDto, _$identity);

  /// Serializes this YearlyArticleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearlyArticleDto&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'YearlyArticleDto(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $YearlyArticleDtoCopyWith<$Res>  {
  factory $YearlyArticleDtoCopyWith(YearlyArticleDto value, $Res Function(YearlyArticleDto) _then) = _$YearlyArticleDtoCopyWithImpl;
@useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<ArticleMetadata> articles
});




}
/// @nodoc
class _$YearlyArticleDtoCopyWithImpl<$Res>
    implements $YearlyArticleDtoCopyWith<$Res> {
  _$YearlyArticleDtoCopyWithImpl(this._self, this._then);

  final YearlyArticleDto _self;
  final $Res Function(YearlyArticleDto) _then;

/// Create a copy of YearlyArticleDto
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

class _YearlyArticleDto implements YearlyArticleDto {
  const _YearlyArticleDto({required this.year, required this.count, required this.lastUpdated, required final  List<ArticleMetadata> articles}): _articles = articles;
  factory _YearlyArticleDto.fromJson(Map<String, dynamic> json) => _$YearlyArticleDtoFromJson(json);

@override final  int year;
@override final  int count;
@override final  DateTime lastUpdated;
 final  List<ArticleMetadata> _articles;
@override List<ArticleMetadata> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of YearlyArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearlyArticleDtoCopyWith<_YearlyArticleDto> get copyWith => __$YearlyArticleDtoCopyWithImpl<_YearlyArticleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearlyArticleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearlyArticleDto&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,lastUpdated,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'YearlyArticleDto(year: $year, count: $count, lastUpdated: $lastUpdated, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$YearlyArticleDtoCopyWith<$Res> implements $YearlyArticleDtoCopyWith<$Res> {
  factory _$YearlyArticleDtoCopyWith(_YearlyArticleDto value, $Res Function(_YearlyArticleDto) _then) = __$YearlyArticleDtoCopyWithImpl;
@override @useResult
$Res call({
 int year, int count, DateTime lastUpdated, List<ArticleMetadata> articles
});




}
/// @nodoc
class __$YearlyArticleDtoCopyWithImpl<$Res>
    implements _$YearlyArticleDtoCopyWith<$Res> {
  __$YearlyArticleDtoCopyWithImpl(this._self, this._then);

  final _YearlyArticleDto _self;
  final $Res Function(_YearlyArticleDto) _then;

/// Create a copy of YearlyArticleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? count = null,Object? lastUpdated = null,Object? articles = null,}) {
  return _then(_YearlyArticleDto(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleMetadata>,
  ));
}


}


/// @nodoc
mixin _$YearSummaryDto {

 int get year; int get count; List<int> get months;
/// Create a copy of YearSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YearSummaryDtoCopyWith<YearSummaryDto> get copyWith => _$YearSummaryDtoCopyWithImpl<YearSummaryDto>(this as YearSummaryDto, _$identity);

  /// Serializes this YearSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YearSummaryDto&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.months, months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,const DeepCollectionEquality().hash(months));

@override
String toString() {
  return 'YearSummaryDto(year: $year, count: $count, months: $months)';
}


}

/// @nodoc
abstract mixin class $YearSummaryDtoCopyWith<$Res>  {
  factory $YearSummaryDtoCopyWith(YearSummaryDto value, $Res Function(YearSummaryDto) _then) = _$YearSummaryDtoCopyWithImpl;
@useResult
$Res call({
 int year, int count, List<int> months
});




}
/// @nodoc
class _$YearSummaryDtoCopyWithImpl<$Res>
    implements $YearSummaryDtoCopyWith<$Res> {
  _$YearSummaryDtoCopyWithImpl(this._self, this._then);

  final YearSummaryDto _self;
  final $Res Function(YearSummaryDto) _then;

/// Create a copy of YearSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? count = null,Object? months = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _YearSummaryDto implements YearSummaryDto {
  const _YearSummaryDto({required this.year, required this.count, required final  List<int> months}): _months = months;
  factory _YearSummaryDto.fromJson(Map<String, dynamic> json) => _$YearSummaryDtoFromJson(json);

@override final  int year;
@override final  int count;
 final  List<int> _months;
@override List<int> get months {
  if (_months is EqualUnmodifiableListView) return _months;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_months);
}


/// Create a copy of YearSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YearSummaryDtoCopyWith<_YearSummaryDto> get copyWith => __$YearSummaryDtoCopyWithImpl<_YearSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YearSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YearSummaryDto&&(identical(other.year, year) || other.year == year)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._months, _months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,count,const DeepCollectionEquality().hash(_months));

@override
String toString() {
  return 'YearSummaryDto(year: $year, count: $count, months: $months)';
}


}

/// @nodoc
abstract mixin class _$YearSummaryDtoCopyWith<$Res> implements $YearSummaryDtoCopyWith<$Res> {
  factory _$YearSummaryDtoCopyWith(_YearSummaryDto value, $Res Function(_YearSummaryDto) _then) = __$YearSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 int year, int count, List<int> months
});




}
/// @nodoc
class __$YearSummaryDtoCopyWithImpl<$Res>
    implements _$YearSummaryDtoCopyWith<$Res> {
  __$YearSummaryDtoCopyWithImpl(this._self, this._then);

  final _YearSummaryDto _self;
  final $Res Function(_YearSummaryDto) _then;

/// Create a copy of YearSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? count = null,Object? months = null,}) {
  return _then(_YearSummaryDto(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self._months : months // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
