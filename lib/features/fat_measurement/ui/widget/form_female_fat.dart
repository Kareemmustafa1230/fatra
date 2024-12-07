import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/theme.dart';
import '../../../login_app/ui/widget/textformfield_login_signup.dart';
import '../../logic/cubit/female_fat_cubit.dart';
import '../../logic/cubit/male_fat_cubit.dart';

class FormFemaleFat extends StatelessWidget {
  const FormFemaleFat({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<FemaleFatCubit>().formKey,
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/fun-3d-cartoon-teenage-kids 1 (1).png',
                        height: 330.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50.h,
                  left: 220.w,
                  right: 65.w,
                  bottom: 235.h,
                  child: AppTextFormField(
                    controller: context.read<FemaleFatCubit>().neckController,
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
                  top: 150.h,
                  left: 205.w,
                  right: 63.w,
                  bottom: 135.h,
                  child: AppTextFormField(
                    controller: context.read<FemaleFatCubit>().hipController,
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
                    hintText: 'أسفل الظهر (سم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
                Positioned(
                  top: 270.h,
                  left: 230.w,
                  right: 55.w,
                  bottom: 15.h,
                  child: AppTextFormField(
                    controller: context.read<FemaleFatCubit>().weightController,
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
                    hintText: 'الوزن (كجم)',
                    hintStyle: ThemeApp.font9darkGray59400Weight,
                  ),
                ),
                Positioned(
                  top: 275.h,
                  left: 30.w,
                  right: 250.w,
                  bottom: 10.h,
                  child: AppTextFormField(
                    controller: context.read<FemaleFatCubit>().heightController,
                    validationMsg: ' enter a valid neck',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' enter a valid neck';
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
                  top: 115.h,
                  left: 52.w,
                  right: 230.w,
                  bottom: 170.h,
                  child: AppTextFormField(
                    controller: context.read<FemaleFatCubit>().middleController,
                    validationMsg: ' enter a valid neck',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ' enter a valid neck';
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
