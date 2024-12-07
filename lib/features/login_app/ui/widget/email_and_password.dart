import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/login_app/ui/widget/textformfield_login_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/login_user_cubit.dart';


class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});
  @override
  _EmailAndPasswordState createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {


  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginUserCubit>().formKey,
      child: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text('البريد الاكتروني',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              textInputType: TextInputType.emailAddress,
              validationMsg: 'Please enter a valid email',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid email';
                }
              },
              hintText: 'email',
                controller: context.read<LoginUserCubit>().emailController,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
             Text('كلمة السر',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              hasBorder: true,
              isPassword:true ,
              textInputType: TextInputType.visiblePassword,
              validationMsg: 'Please enter a valid password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
              hintText: 'password',
              controller: context.read<LoginUserCubit>().passwordController,
              //decoration: InputDecoration(hintText: 'كلمة السر'),
            ),
          ],
        ),
      ),
    );
  }
}
