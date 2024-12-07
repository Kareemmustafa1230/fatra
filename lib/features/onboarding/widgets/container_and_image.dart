import 'package:feta/core/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerAndImage extends StatelessWidget {
  final String images  ;
  final double height ;
  const ContainerAndImage({super.key,required this.images,required this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: 390.h,
          decoration: BoxDecoration(
            color: ThemeApp.green7C,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(MediaQuery.of(context).size.width/2, 110.0),
                bottomLeft: Radius.elliptical(MediaQuery.of(context).size.width/2, 25.0)
            ),
          ) ,
        ),
        Container(
          margin: EdgeInsets.only(top:height.h),
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: 445.h,
          child: Image.asset(images),
        ),
      ],
    );
  }
}
