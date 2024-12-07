import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:20.w ,right: 22.w),
      width: 120.w,
      height: 1.h,
      color: ThemeApp.gray82,
    );
  }
}
