import 'package:feta/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../../core/databases/api/api_constants.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/theme.dart';

class LogoutApp extends StatelessWidget {
  const LogoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        getIt<CacheHelper>().removeData(key: ApiKey.token);
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const OnboardingScreen(),
          withNavBar: false, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.scaleRotate,
        );
      },
      child: Container(
      height: 58,
      width: 343,
      decoration: BoxDecoration(
        color: ThemeApp.grayF2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 90.w),
          Text('تسجيل خروج', style: ThemeApp.font18green5B600Weight.copyWith(color: ThemeApp.black32)),
          SizedBox(width: 56.w),
          Transform.scale(
            scale: -1.0,
            child: Icon(
              Icons.logout_outlined,
              size: 25.w,
              color: ThemeApp.black32,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
