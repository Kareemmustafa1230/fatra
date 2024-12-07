import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';
import '../../../login_app/ui/widget/textformfield_login_signup.dart';
import '../../logic/cubit/male_fat_cubit.dart';

class FormMaleFat extends StatelessWidget {
  const FormMaleFat({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<MaleFatCubit>().formKey,
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/fun-3d-cartoon-teenage-kids 2.png',
                        height: 330.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50.h,
                  left: 225.w,
                  right: 60.w,
                  bottom: 235.h,
                  child: AppTextFormField(
                    controller: context.read<MaleFatCubit>().neckController,
                    validationMsg: ' enter a valid neck',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' enter a valid neck';
                      }
                    },
                    background: ThemeApp.whiteTabFA,
                    enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textAlign: TextAlign.center,
                    textInputType: TextInputType.number,
                    hintText: 'الرقبة (سم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
                Positioned(
                  top: 270.h,
                  left: 245.w,
                  right: 35.w,
                  bottom: 15.h,
                  child: AppTextFormField(
                    controller: context.read<MaleFatCubit>().weightController,
                    validationMsg: 'Please enter a valid email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
                      }
                    },
                    background: ThemeApp.whiteTabFA,
                    enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textAlign: TextAlign.center,
                    textInputType: TextInputType.number,
                    hintText: 'الوزن (كجم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
                Positioned(
                  top: 275.h,
                  left: 35.w,
                  right: 245.w,
                  bottom: 10.h,
                  child: AppTextFormField(
                    controller: context.read<MaleFatCubit>().heightController,
                    validationMsg: 'Please enter a valid email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
                      }
                    },
                    enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    background: ThemeApp.whiteTabFA,
                    textAlign: TextAlign.center,
                    textInputType: TextInputType.number,
                    hintText: 'الطول (سم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
                Positioned(
                  top: 140.h,
                  left: 55.w,
                  right: 225.w,
                  bottom: 145.h,
                  child: AppTextFormField(
                    controller: context.read<MaleFatCubit>().middleController,
                    validationMsg: 'Please enter a valid email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email';
                      }
                    },
                    enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeApp.green5B, width: 1.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    background: ThemeApp.whiteTabFA,
                    textAlign: TextAlign.center,
                    textInputType: TextInputType.number,
                    hintText: 'الوسط (سم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
