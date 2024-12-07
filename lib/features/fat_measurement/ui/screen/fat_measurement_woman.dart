import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/theme.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';
import '../../logic/cubit/female_fat_cubit.dart';
import '../../logic/cubit/female_fat_state.dart';
import '../widget/correct_measurement_item.dart';
import '../widget/data_rate_fat.dart';
import '../widget/form_female_fat.dart';
import '../widget/text_container.dart';

class FatMeasurementWoman extends StatefulWidget {
  const FatMeasurementWoman({super.key});

  @override
  _FatMeasurementWomanState createState() => _FatMeasurementWomanState();
}

class _FatMeasurementWomanState extends State<FatMeasurementWoman> {
  bool hideMeasure = false;
  bool loading = false;

  @override
  void initState() {
    hideMeasure = false;
    loading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<FemaleFatCubit>(),
     child:Scaffold(
      appBar: const CustomAppBar(
        title: 'قياس الدهون',
      ),
      body: BlocBuilder<FemaleFatCubit, FemaleFatState>(
        builder: (context, state) {
          if (state is Success) {
            loading = false;
          }
          return SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  hideMeasure ? const SizedBox() : CorrectMeasurementItem(
                    onTap: () {
                      setState(() {
                        hideMeasure = true;
                      });
                    },
                  ),
                  SizedBox(height: 25.h),
                   const FormFemaleFat(),
                  SizedBox(height: 48.h),
                  TextContainer(
                    text: 'احسب',
                    value1: 50,
                    value2: 143,
                    textStyle: ThemeApp.font18white600Weight,
                    value3: 20,
                    containerColor: ThemeApp.green73,
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      validateThenDoFemaleFat(context);
                    },
                  ),
                  SizedBox(height: 10.h),
                  if (state is Success)
                    DataRateFat(fatMeasurementResponse: state.data),
                  if (loading)
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 50.h),
                          const SpinKitFadingCircle(color: Colors.green),
                        ],
                      ),
                    ),
                  if (state is Error)
                    const Column(
                      children: [
                        Text(
                          'تأكد من الاتصال بالإنترنت',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
     ),
    );
  }

  void validateThenDoFemaleFat(BuildContext context) {
    if (context.read<FemaleFatCubit>().formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      context.read<FemaleFatCubit>().emitFemaleFatStates();
    }
  }
}
