import 'package:bloc/bloc.dart';
import '../../data/repo/food_repo.dart';
import 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final FoodRepo _foodRepo ;
  FoodCubit(this._foodRepo) : super(const FoodState.initial());

  void emitFoodStates() async {
    emit(const FoodState.loading());
    final response = await _foodRepo.food();
    response.when(success: (dataList) {
      emit(FoodState.success(dataList));
    }, failure: (error) {
      emit(FoodState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
