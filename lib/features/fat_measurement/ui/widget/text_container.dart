import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key,required this.text, required this.value1, required this.value2, this.onTap, required this.textStyle, required this.value3, required this.containerColor});
  final String text;
  final double value1;
  final double value2;
  final double value3;
  final VoidCallback? onTap;
  final TextStyle textStyle;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child: Container(
          height:value1.h,
          width: value2.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(value3),
            color: containerColor,
          ),
          child: Text(text,style: textStyle,)
      ),
    );
  }
}
