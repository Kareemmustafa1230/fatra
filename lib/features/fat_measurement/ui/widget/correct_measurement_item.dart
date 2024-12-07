import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';


class CorrectMeasurementItem extends StatelessWidget {
  const CorrectMeasurementItem({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.only(right: 87.w),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Color(0xffFFE082)
      ),
      child:Directionality(
      textDirection: TextDirection.rtl,
       child:
        Row(
          children: [
            InkWell(
              onTap: (){
                context.pushNamed(Routes.measurement);
              },
              child: Text("اذهب إلى الطريقة الصحيحة لأخذ القياسات",style: ThemeApp.font10white400Weight
              ),
            ),
            SizedBox(width: 50.w),
            InkWell(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:10.w ),
                child: Icon(Icons.close,color: const Color(0xff585858),size:15.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}