import 'package:freezed_annotation/freezed_annotation.dart';
part 'female_fat_state.freezed.dart';

@freezed
class FemaleFatState<T> with _$FemaleFatState<T> {
  const factory FemaleFatState.initial() = _Initial;
  const factory FemaleFatState.loading() = Loading;
  const factory FemaleFatState.success(T data) = Success<T>;
  const factory FemaleFatState.error({required String error}) = Error;
}