import 'package:freezed_annotation/freezed_annotation.dart';
part 'male_fat_state.freezed.dart';

@freezed
class MaleFatState<T> with _$MaleFatState<T> {
  const factory MaleFatState.initial() = _Initial;
  const factory MaleFatState.loading() = Loading;
  const factory MaleFatState.success(T data) = Success<T>;
  const factory MaleFatState.error({required String error}) = Error;
}