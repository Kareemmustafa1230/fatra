import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';
import '../../../fat_measurement/ui/widget/text_container.dart';

class NeckMiddleLowerBack extends StatelessWidget {
  const NeckMiddleLowerBack({super.key, required this.text1, required this.text2});
  final String text1 ;
  final String text2 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'القياسات',
          style: ThemeApp.font18White500Weight
              .copyWith(fontWeight: FontWeight.w600),
        ),
        backgroundColor: ThemeApp.green73,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: ThemeApp.whiteFF,
          iconSize: 22,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 29.w, right: 22.w, top: 43.h),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Image.png'),
              SizedBox(height: 30.h),
              Text(text1,
                style: ThemeApp.font20black00600Weight,
              ),
              SizedBox(height: 7.h),
              Row(
                children: [
                  TextContainer(
                      text: 'الصحة',
                      value1: 19,
                      value2: 35,
                      textStyle: ThemeApp.font10white500Weight,
                      value3: 4,
                      containerColor: ThemeApp.purpleF2),
                  SizedBox(width: 3.h),
                  TextContainer(
                      text: 'النحافة',
                      value1: 19,
                      value2: 38,
                      textStyle: ThemeApp.font10white500Weight,
                      value3: 4,
                      containerColor: ThemeApp.royalBlueCD),
                  SizedBox(width: 3.h),
                  TextContainer(
                      text: 'الرياضة',
                      value1: 19,
                      value2: 37,
                      textStyle: ThemeApp.font10white500Weight,
                      value3: 4,
                      containerColor: ThemeApp.turquoiseBlueD1),
                ],
              ),
              SizedBox(height: 22.h),
              Text(
                'اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآن',
                style: ThemeApp.font14grey4F500Weight
                    .copyWith(color: ThemeApp.lightGrayA0),
              ),
              SizedBox(height: 42.h),
              Text(
                'الطريقة الصحيحة لأخذ القياسات:',
                style: ThemeApp.font20black00600Weight,
              ),
              SizedBox(height: 15.h),
              Text( text2,
                style: ThemeApp.font14grey4F500Weight
                    .copyWith(color: ThemeApp.darkGra66),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
