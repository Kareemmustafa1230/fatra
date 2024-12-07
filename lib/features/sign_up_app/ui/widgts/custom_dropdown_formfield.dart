import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:feta/core/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    required this.hintText,
    required this.onChanged,
    required this.items,
    super.key,
    required this.validator,
  this.onTap,
  this.value,
  this.height,
  this.hasBorder=true,
    this.borderRadius = 10,
  this.borderSideColor,
  this.iconDropColor,
  this.fillColor,
  this.borderSideEnabledColor,
    this.borderSideWidth = 1.0,  this.enabledBorderRadiusColor = Colors.grey,
    this.prefixIcon,
  });

  final List<String>? items;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final String hintText;
  final double? height;
  final double borderRadius;
  final double borderSideWidth;
  final Color enabledBorderRadiusColor;
  final Color? borderSideColor;
  final Color? fillColor;
  final Color? iconDropColor;
  final Color? borderSideEnabledColor;
  final bool hasBorder;
  final Widget? prefixIcon;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      alignment: Alignment.centerRight,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.keyboard_arrow_down_rounded,size: 30,color:Colors.grey),
        isDense: true,
        fillColor: fillColor??const Color(0xffF2F2F2),
        filled: true,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius,
            ),
          ),
          borderSide: (!hasBorder)
              ? BorderSide.none
              : BorderSide(
            color: borderSideColor?? ThemeApp.green73,
            width: borderSideWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius,
            ),
          ),
          borderSide: (!hasBorder)
              ? BorderSide.none
              : BorderSide(
            color: borderSideColor?? ThemeApp.green73,
            width: borderSideWidth,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius,
            ),
          ),
          borderSide: (!hasBorder)
              ? BorderSide.none
              : BorderSide(
            color: borderSideEnabledColor?? Colors.grey.shade300,
            width: borderSideWidth,
          ),
        ),
      ),
      value: value,
      isExpanded: true,
      hint: Text(hintText,),
      items: items!
          .map((item) => DropdownMenuItem<String>(
                onTap: onTap,
                value: item.toString(),
                child: Text(
                  item.toString(),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height*.016,
                  ),
                ),
              ))
          .toList(),
      validator: validator,
      iconStyleData: const IconStyleData(icon:Icon(Icons.arrow_drop_down,size: 0,)),
      onChanged: onChanged,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sell_your_crop/core/helpers/shared_pref_helper.dart';
import 'package:sell_your_crop/core/networking/constants/api_constants.dart';
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
        labelStyle: TextStyleApp.font12black00Weight500,
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
