import 'package:feta/core/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/images.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height:38.h ,
      decoration: BoxDecoration(
        color: ThemeApp.whiteFF,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:ThemeApp.grayBD,
        width: 1.w),
      ),
      child:Padding(
        padding:  EdgeInsets.only(left:20.w),
        child:Row(
          children: [
            SvgPicture.asset(Images.images3),
            SizedBox(width: 60.w),
            Text('المتصفح الرسمي جوجل',
              style: ThemeApp.font14grey4F500Weight,
            ),
          ],
        ) ,
      ),
    );
  }
}
