import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/images.dart';
import '../widgets/home_item.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Stack(
           children: [
          Column(
          children: [
          Container(
            height: 350.h,
            width:double.infinity ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(MediaQuery.of(context).size.width, 35.0),
                  bottomLeft: Radius.elliptical(MediaQuery.of(context).size.width, 35.0)
              ),
              color: ThemeApp.green73,
            ),
            child:Column(
              children: [
                SizedBox(height: 90.h,),
                Row(
                  children: [
                    SizedBox(width: 23.w,),
                    SvgPicture.asset(Images.images6,width: 50,height: 50,),
                    SizedBox(width: 30.w,),
                    Container(
                      width: 277,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        hoverColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'البحث',
                        hintStyle: ThemeApp.font12grayBD400Weight,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: ThemeApp.green73,
                          ),
                        ),
                          suffixIcon: const Icon(CupertinoIcons.search,size: 25,color: ThemeApp.grayBD,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: ThemeApp.green73,
                          ),
                        )
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),

          ),
          Container(
            width: double.infinity,
            height: 55.h,
            color: Colors.white,
          ),
              ],
            ),
        Positioned(
          top: 180.h,
          bottom: 0.h,
          left: 0.w,
          right: 0.w,
          child: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/Frame 169.png'),
          ),
        ),
      ],
    ),

                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child:  Row(
                    children: [
                      Expanded(child: HomeItem(backColor: const Color(0x1AF8A44C), borderColor:  const Color(0xB2F8A44C), title: 'مقالات', image: Images.images7, onTap: () {
                        context.pushNamed(Routes.articles);
                      },)),
                      SizedBox(width: 20.w),
                      Expanded(child: HomeItem(backColor: const Color(0x1A53B175), borderColor:  const Color(0xB253B175), title: 'حساب الدهون', image: Images.images8, onTap: () {
                        context.pushNamed(Routes.fatMeasurement);
                      },)),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child:  Row(
                    children: [
                      Expanded(child: HomeItem(backColor: const Color(0x40F7A593), borderColor:  const Color(0xffF7A593), title: 'مقاطع فيديو', image: Images.images9, onTap: () {
                        context.pushNamed(Routes.categoryVideo);
                      },)),
                      SizedBox(width: 20.w),
                      Expanded(child: HomeItem(backColor: const Color(0x40D3B0E0), borderColor:  const Color(0xffD3B0E0), title: 'مدربين', image: Images.images10, onTap: () {
                        context.pushNamed(Routes.measurement);
                      },)),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child:  Row(
                    children: [
                      Expanded(child: HomeItem(backColor: const Color(0xffE6F0F5), borderColor:  const Color(0xffB7DFF5), title: 'الوصفات', image: Images.images12, onTap: () {
                        context.pushNamed(Routes.recipes);

                      },)),
                      SizedBox(width: 20.w),
                      Expanded(child: HomeItem(backColor: const Color(0x1AF8A44C), borderColor:  const Color(0xB2F8A44C), title: 'حساب دهون مدفوع', image: Images.images11, onTap: () {
                        context.pushNamed(Routes.fatMeasurement);
                      },)),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
        ],
      )
      ),
    );
  }
}
