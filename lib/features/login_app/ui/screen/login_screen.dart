import 'package:feta/core/helpers/extensions.dart';
import 'package:feta/core/theming/images.dart';
import 'package:feta/features/login_app/ui/widget/email_and_password.dart';
import 'package:feta/features/onboarding/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/theme.dart';
import '../../logic/cubit/login_user_cubit.dart';
import '../../logic/cubit/login_user_state.dart';
import '../widget/bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const EmailAndPassword(),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "نسيت كلمة المرور؟",
                          style: TextStyle(color: ThemeApp.green77),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.h),

                BlocBuilder<LoginUserCubit, LoginState>(
                  builder: (context, state) {
                     return state is Loading ?
                     const Center(
                         child: SpinKitFadingCircle(color: Colors.green,),
                    )
                     : TextButtons(
                  value: 54,
                  color: ThemeApp.green73,
                  textStyle: ThemeApp.font18white600Weight,
                  text: 'سجل',
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  );
                 },
                ),
                const LoginBlocListeners(),
                SizedBox(height: 22.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "لديك حساب بالفعل؟ ",
                      style: ThemeApp.font12white400Weight
                    ),
                    InkWell(
                      onTap: () {
                        context.pushNamed(Routes.signUpScreen);
                      },
                      child: Text(
                        "سجل دخول",
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
}


  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginUserCubit>().formKey.currentState!.validate()) {
      context.read<LoginUserCubit>().emitLoginStates();
    }
  }

