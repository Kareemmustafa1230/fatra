import 'package:feta/features/login/presentation/cubit/login_app_cubit.dart';
import 'package:feta/features/login/presentation/widgets/textformfiled_login_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});
  @override
  _EmailAndPasswordState createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {


  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginAppCubit>().signInFormKey,
      child: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('البريد الاكتروني'),
            SizedBox(height: 10.h),
            AppTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid email';
                }
              },
              hintText: 'email',
              controller: context.read<LoginAppCubit>().signInEmail,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
            const Text('كلمة السر'),
            SizedBox(height: 10.h),
            AppTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
              hintText: 'password',
              controller: context.read<LoginAppCubit>().signInPassword,
              //decoration: InputDecoration(hintText: 'كلمة السر'),
            ),
          ],
        ),
      ),
    );
  }
}
