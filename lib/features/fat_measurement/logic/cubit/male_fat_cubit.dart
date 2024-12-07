import 'package:feta/features/fat_measurement/data/model/fat_measurement_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/male_measurement_repo.dart';
import 'male_fat_state.dart';

class MaleFatCubit extends Cubit<MaleFatState> {
  final MaleMeasurementRepo _maleMeasurementRepo;
  MaleFatCubit(this._maleMeasurementRepo) : super(const MaleFatState.initial());

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController neckController = TextEditingController();
  TextEditingController middleController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitMaleFatStates() async {
    emit(const MaleFatState.loading());
    final response = await _maleMeasurementRepo.maleFat(
        FatMeasurementRequest(

            height: heightController.text,
             weight: weightController.text,
             neck: neckController.text,
             middle: middleController.text,
        ),
    );
    response.when(success: (fatMeasurementResponse) {
      emit(MaleFatState.success(fatMeasurementResponse));
    }, failure: (error) {
      emit(MaleFatState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}