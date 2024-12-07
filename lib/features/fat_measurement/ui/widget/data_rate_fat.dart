import 'package:feta/features/fat_measurement/ui/widget/row_data_rate_fat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/fat_measurement_response.dart';

class DataRateFat extends StatelessWidget {
   DataRateFat({super.key, required this.fatMeasurementResponse});
   FatMeasurementResponse fatMeasurementResponse ;
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(right: 28.w,left: 30.w),
      child: Column(
        children: [
          RowDataRateFat(text: 'نسبة الدهون', value: '${fatMeasurementResponse.data?.bodyFat}'),
          SizedBox(height: 15.h),
          RowDataRateFat(text: 'وزن الدهون', value: '${fatMeasurementResponse.data?.fatMass} كجم'),
          SizedBox(height: 15.h),
          RowDataRateFat(text: 'وزن الكتلة اللادهنية', value: '${fatMeasurementResponse.data?.leanMass} كجم'),
          SizedBox(height: 15.h),
          RowDataRateFat(text: 'فئة الدهون', value: '${fatMeasurementResponse.data?.fatCategory}'),
        ],
      ),
    );
  }
}
