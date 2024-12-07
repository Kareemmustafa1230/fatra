import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FatCalcRowItem extends StatelessWidget {
  const FatCalcRowItem({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [

        ],
      ),
    );
  }
}
