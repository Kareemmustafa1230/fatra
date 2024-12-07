import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:feta/features/login_app/ui/widget/another_login.dart';
import 'package:feta/features/onboarding/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/theme.dart';
import '../../../onboarding/widgets/container_and_image.dart';
import 'google_sign_in.dart';

class ChooseRoute extends StatelessWidget {
  const ChooseRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ContainerAndImage(images:Images.images2, height: 45,),
          SizedBox(height: 10.h,),
          TextButtons(value: 54, color: ThemeApp.green73,textStyle: ThemeApp.font18white600Weight,text: 'تسجيل دخول',
            onPressed:(){
            context.pushNamed(Routes.loginScreen);
            },
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: (){
              context.pushNamed(Routes.signUpScreen);
            },
            child: Container(
              width: 335.w,
              height: 54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1.5,color: ThemeApp.green73),
                color: ThemeApp.whiteFF,
              ),
              child: Center(
                child: Text(
                  'إنشاء حساب',
                  style: ThemeApp.font18green5B600Weight,
                ),
              ),
            ),
          ),
          SizedBox(height: 38.h),
          const AnotherLogin(),
          SizedBox(height: 38.h),
          const GoogleSignIn(),
        ],
      ),
    );
  }
}
