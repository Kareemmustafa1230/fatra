import 'package:feta/core/databases/cache/cache_helper.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../login_app/ui/widget/textformfield_login_signup.dart';
import '../../logic/cubit/sign_up_user_cubit.dart';
import 'custom_dropdown_formfield.dart';

class NameEmailPasswordGender extends StatelessWidget {
   NameEmailPasswordGender({super.key});
   late String genderValue;
  List<String> genders = ["Male", "Female"];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpUserCubit>().formKey,
      child: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text('الاسم',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              textInputType: TextInputType.name,
              validationMsg: 'Please enter a valid name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                }
              },
              hintText: 'name',
              controller: context.read<SignUpUserCubit>().nameController,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
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
              controller: context.read<SignUpUserCubit>().emailController,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
             Text('كلمة السر',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              isPassword: true,
              hasCons: true,
              textInputType: TextInputType.visiblePassword,
              validationMsg: 'Please enter a valid password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
              hintText: 'password',
              controller: context.read<SignUpUserCubit>().passwordController,
              //decoration: InputDecoration(hintText: 'كلمة السر'),
            ),
            SizedBox(height: 6.h),
             Text(' رقم الهاتف',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              textInputType: TextInputType.phone,
              validationMsg: 'Please enter a valid phone number',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid phone number';
                }
              },
              hintText: 'phone',
              controller: context.read<SignUpUserCubit>().phoneController,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
             Text('النوع',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            Container(
              height: 54.h,
              decoration: BoxDecoration(
                color: ThemeApp.grayF2,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: ThemeApp.green73,
                    spreadRadius: 0.2,
                    blurRadius: 0.2,
              ),
              ],
              ),

              child: CustomDropDownButton(
              onChanged: (value) {
                genderValue = value!;
                CacheHelper().saveData(key: 'genderValue', value: genderValue);
              },
              items: genders,
              validator: (String? value) {
                if (value == null) {
                  return "ValidationEmptyText";
                }
                return null;
              },
              borderSideEnabledColor: const Color(0xfff2f2f2),
              height: 90.h,
              hintText: 'gender',
                borderRadius: 15,
            ),
            ),
            SizedBox(height: 6.h),
             Text('العمر',style:ThemeApp.font14gray33500Weight),
            SizedBox(height: 10.h),
            AppTextFormField(
              textAlign: TextAlign.end,
              textInputType: TextInputType.number,
              validationMsg: 'Please enter a valid age',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid age';
                }
              },
              hintText: 'age',
              controller: context.read<SignUpUserCubit>().ageController,
              //decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sell_your_crop/core/helpers/shared_pref_helper.dart';
import 'package:sell_your_crop/core/networking/di/dependency_injection.dart';
import 'package:sell_your_crop/core/theme/Color/colors.dart';
import 'package:sell_your_crop/core/theme/text_style/text_style.dart';

class DropdownTextFormFieldApp extends StatefulWidget {
  const DropdownTextFormFieldApp({super.key});

  @override
  _DropdownTextFormFieldAppState createState() => _DropdownTextFormFieldAppState();
}

class _DropdownTextFormFieldAppState extends State<DropdownTextFormFieldApp> {
  final List<String> items = ['farm', 'merchant', 'source'];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      style: const TextStyle(fontSize: 18, color: ColorApp.black00),
      icon: const Icon(
        FontAwesomeIcons.caretDown,
        color: ColorApp.whiteFF,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyleApp.font14black00Weight500,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: const BorderSide(
            color: ColorApp.grey9D,
            width: 1.5,
          ),
        ),
        fillColor: ColorApp.grey9D,
        filled: true,
        iconColor: ColorApp.whiteFF,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: const BorderSide(
            color: ColorApp.grey9D,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: const BorderSide(
            color: ColorApp.grey9D,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى اختيار وظيفة';
        }
        return null;
      },
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedItem = newValue;
        });
        if (selectedItem != null) {
          getIt<SharedPrefHelper>().saveData(key: 'selectedItem', value: selectedItem!);
        }
      },
      value: selectedItem,
      isExpanded: true,
      elevation: 8,
    );
  }
}
