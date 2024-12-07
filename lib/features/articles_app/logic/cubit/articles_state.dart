import 'package:freezed_annotation/freezed_annotation.dart';
part 'articles_state.freezed.dart';

@freezed
class ArticlesState<T> with _$ArticlesState<T> {
  const factory ArticlesState.initial() = _Initial;
  const factory ArticlesState.loading() = Loading;
  const factory ArticlesState.success(T data) = Success<T>;
  const factory ArticlesState.error({required String error}) = Error;
}