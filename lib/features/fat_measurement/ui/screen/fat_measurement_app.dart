import 'package:feta/features/fat_measurement/ui/widget/row_text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home_screen/ui/widget/custom_app_bar.dart';

class FatMeasurementApp extends StatelessWidget {
  const FatMeasurementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(
        title: 'قياس الدهون',
      ),
      body: Directionality(
         textDirection: TextDirection.rtl,
        child: Column(
        children: [
          SizedBox(height: 118.h),
          Image.asset('assets/images/fun-3d-cartoon-teenage-kids 1.png'),
          SizedBox(height: 25.h),
          const RowTextType(),
        ],
      ),
      ),
    );
  }
}
