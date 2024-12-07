import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';
import '../../../fat_measurement/ui/widget/text_container.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';

class MeasurementApp extends StatelessWidget {
  const MeasurementApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'القياسات',
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextContainer(onTap: (){
            context.pushNamed(Routes.neckMeasurement);
          },text: 'الرقبة', value1: 55, value2: 335, textStyle: ThemeApp.font18white600Weight.copyWith(fontWeight: FontWeight.w500,color: ThemeApp.black00), value3: 20, containerColor: ThemeApp.pink93,),
          SizedBox(height: 31.h),
          TextContainer(onTap: (){
            context.pushNamed(Routes.neckMeasurement);
          },text: 'الوسط', value1: 55, value2: 335, textStyle: ThemeApp.font18white600Weight.copyWith(fontWeight: FontWeight.w500,color: ThemeApp.black00), value3: 20, containerColor: ThemeApp.pink4C,),
          SizedBox(height: 31.h),
          TextContainer(onTap: (){
            context.pushNamed(Routes.neckMeasurement);
          },text: 'أسفل الظهر', value1: 55, value2: 335, textStyle: ThemeApp.font18white600Weight.copyWith(fontWeight: FontWeight.w500,color: ThemeApp.black00), value3: 20, containerColor: ThemeApp.pink75,),
        ],
      ),
      ),
    );
  }
}
