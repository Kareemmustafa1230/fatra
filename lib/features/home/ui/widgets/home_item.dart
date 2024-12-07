import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.backColor, required this.borderColor, required this.title, required this.image, required this.onTap});
  final Color backColor;
  final Color borderColor;
  final String title;
  final String image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height:145.h,
        padding: EdgeInsets.symmetric(horizontal:20.w,vertical: 20.h),
        decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: borderColor)
        ),
        child: Column(
          children: [
            Image.asset(image,width:55.w,height: 55.h),
            SizedBox(height: 10.h),
            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp
              ),),
          ],
        ),
      ),
    );
  }
}
