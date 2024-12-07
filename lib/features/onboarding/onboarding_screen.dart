import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/onboarding/widgets/container_and_image.dart';
import 'package:feta/features/onboarding/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theming/images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeApp.green73,
      body: Column(
        children: [
          const ContainerAndImage(images:Images.images1, height: 80,),
          SizedBox(height:25.h ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('احصل على نظام غذائي للصيام المتقطع',
                speed: const Duration(milliseconds: 130),
                textStyle: ThemeApp.font18White500Weight,textAlign: TextAlign.center,
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
            displayFullTextOnTap: true,
            stopPauseOnTap: false,
          ),
          //Text('احصل على نظام غذائي للصيام المتقطع',style:ThemeApp.font18White500Weight,textAlign: TextAlign.center,),
          SizedBox(height:65.h ),
          Padding(
            padding: EdgeInsets.only(left:20.w, right:20.w,),
            child: TextButtons(value: 54,color: ThemeApp.whiteFF,textStyle: ThemeApp.font18green73600Weight,text:'إبدأ',
              onPressed: (){
                   context.pushNamed(Routes.chooseRoute);
            },
            ),
          ),
        ],
      )
    );
  }
}
