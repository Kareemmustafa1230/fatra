import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';

class RowContainerProfile extends StatelessWidget {
  const RowContainerProfile({super.key, this.onTap, required this.title, required this.icon, required this.value1, required this.value2});
  final Function()? onTap;
  final String title;
  final IconData icon;
  final double value1;
  final double value2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 343.w,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ThemeApp.whiteFF,
        ),
        child: Row(
          children: [
            Container(
              height: 64.h,
              width: 7.w,
              decoration: BoxDecoration(
                  color: ThemeApp.green73,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r))),
            ),
            SizedBox(width: 18.w),
            Text(title, style: ThemeApp.font16darkGray58600Weight,),
            SizedBox(width: value1.w),
            Icon(icon, color: ThemeApp.black00, size: value2.sp)
          ],
        ),
      ),
    );
  }
}
