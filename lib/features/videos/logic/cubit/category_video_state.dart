import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_video_state.freezed.dart';

@freezed
class CategoryVideoState<T> with _$CategoryVideoState<T> {
  const factory CategoryVideoState.initial() = _Initial;
  const factory CategoryVideoState.loading() = Loading;
  const factory CategoryVideoState.success(T data) = Success<T>;
  const factory CategoryVideoState.error({required String error}) = Error;
}