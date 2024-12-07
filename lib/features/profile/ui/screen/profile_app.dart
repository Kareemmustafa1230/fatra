import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/profile/ui/widget/logout_app.dart';
import 'package:feta/features/profile/ui/widget/row_container_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: 142,
                    height: 142,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.w,
                        color: ThemeApp.green73,
                      ),
                    ),
                    child: Container(
                      height: 115.h,
                      width: 115.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Group 10.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'كريم مصطفي',
                    style: ThemeApp.font14grey4F500Weight
                        .copyWith(fontSize: 22.sp),
                  ),
                  SizedBox(height: 30.h),
                  const RowContainerProfile(
                    title: 'معلومات الحساب',
                    icon: Icons.arrow_forward_ios_rounded,
                    value1: 175,
                    value2: 16,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const RowContainerProfile(
                    title: 'مواعيد النوم',
                    icon: Icons.arrow_forward_ios_rounded,
                    value1: 208,
                    value2: 16,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const RowContainerProfile(
                    title: 'مواعيد المشي',
                    icon: Icons.arrow_forward_ios_rounded,
                    value1: 195,
                    value2: 16,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const RowContainerProfile(
                    title: 'الاشتراكات',
                    icon: Icons.arrow_forward_ios_rounded,
                    value1: 220,
                    value2: 16,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const RowContainerProfile(
                    title: 'قياساتي',
                    icon: Icons.arrow_forward_ios_rounded,
                    value1: 235,
                    value2: 16,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  const RowContainerProfile(
                      title: 'اللغة العربية',
                      icon: Icons.keyboard_arrow_down_sharp,
                      value1: 205,
                      value2: 23),
                  SizedBox(height: 75.h),
                  const LogoutApp(),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
