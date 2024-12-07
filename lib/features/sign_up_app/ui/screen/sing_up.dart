import 'package:feta/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/images.dart';
import '../../../../core/theming/theme.dart';
import '../../../onboarding/widgets/text_button.dart';
import '../../logic/cubit/sign_up_user_cubit.dart';
import '../../logic/cubit/sign_up_user_state.dart';
import '../widgts/name_email_password_geander.dart';
import '../widgts/signup_bloc_listeners.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
                Icons.arrow_back_ios, color: ThemeApp.whiteFF, size: 25),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFF53B97C),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 277.h,
                  decoration: BoxDecoration(
                    color: ThemeApp.green7C,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(MediaQuery
                          .of(context)
                          .size
                          .width / 2, 110.0),
                      bottomLeft: Radius.elliptical(MediaQuery
                          .of(context)
                          .size
                          .width / 2, 25.0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  height: 340.h,
                  child: Image.asset(Images.images4),
                ),
                Positioned(
                  top: 65.h,
                  bottom: 0.h,
                  left: 200.w,
                  right: 0.w,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      ' تسجيل دخول',
                      style: TextStyle(color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Cairo'),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                 NameEmailPasswordGender(),
                SizedBox(height: 40.h),
                BlocBuilder<SignUpUserCubit, SignupState>(
                  builder: (context, state) {
                    return state is Loading ?
                    const Center(
                      child: SpinKitFadingCircle(color: Colors.green,),
                    )
                        : TextButtons(
                      value: 54,
                      color: ThemeApp.green73,
                      textStyle: ThemeApp.font18white600Weight,
                      text: 'إنشاء الحساب',
                      onPressed: () {
                        validateThenDoSignUp(context);
                      },
                    );
                  },
                ),
               const SignupBlocListeners(),
                SizedBox(height: 22.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "ليس لديك حساب؟ ",
                        style: ThemeApp.font12white400Weight
                    ),
                    InkWell(
                      onTap: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      child: Text(
                          "انشئ حساب",
                          style: ThemeApp.font12gray77700Weight
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignUpUserCubit>().formKey.currentState!.validate()) {
      context.read<SignUpUserCubit>().emitSignupStates(
        type: CacheHelper().getData(key: 'genderValue'),
      );

    }
  }
}
