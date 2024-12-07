import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_articles_state.freezed.dart';

@freezed
class CategoryArticlesState<T> with _$CategoryArticlesState<T> {
  const factory CategoryArticlesState.initial() = _Initial;
  const factory CategoryArticlesState.loading() = Loading;
  const factory CategoryArticlesState.success(T data) = Success<T>;
  const factory CategoryArticlesState.error({required String error}) = Error;
}