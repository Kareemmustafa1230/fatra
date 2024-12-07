import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/female_fat_measurement_request.dart';
import '../../data/repo/female_measurement_repo.dart';
import 'female_fat_state.dart';

class FemaleFatCubit extends Cubit<FemaleFatState> {
  final FemaleMeasurementRepo _femaleMeasurementRepo;
  FemaleFatCubit(this._femaleMeasurementRepo) : super(const FemaleFatState.initial());

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController neckController = TextEditingController();
  TextEditingController middleController = TextEditingController();
  TextEditingController hipController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitFemaleFatStates() async {
    emit(const FemaleFatState.loading());
    final response = await _femaleMeasurementRepo.femaleFat(
      FemaleFatMeasurementRequest(
        height: heightController.text,
        weight: weightController.text,
        neck: neckController.text,
        middle: middleController.text,
        hip:hipController.text
      ),
    );
    response.when(success: (fatMeasurementResponse) {
      emit(FemaleFatState.success(fatMeasurementResponse));
    }, failure: (error) {
      emit(FemaleFatState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}