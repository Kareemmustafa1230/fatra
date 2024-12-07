import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:feta/core/theming/theme.dart';

class AppTextFormField extends StatefulWidget {
  final TextAlign? textAlign;
  final EdgeInsetsDirectional? contentPadding;
  bool isPassword;
  bool showEye;
  bool hasBorder;
  bool hasCons;
  bool autoFocus;
  bool readOnly;
  bool isFilled;
  Function? onTap;
  Widget? prefixIcon;
  Function(String)? onFilledSubmit;
  Widget? suffixIcon;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isSecureText;
  Function(String)? onChange;
  String? validationMsg;
  TextInputType textInputType;
  final Color? background;
  final TextEditingController? controller;
  final Function? validator;
  final BorderRadius? borderRadius;

  AppTextFormField({
    super.key,
    this.isPassword = false,
    this.contentPadding,
    required this.textInputType,
    this.focusBorder,
    this.autoFocus = false,
    this.readOnly = false,
    this.isFilled = false,
    this.showEye = true,
    this.hasBorder = true,
    this.hasCons = false,
    this.onTap,
    this.enableBorder,
    this.inputTextStyle,
    this.validationMsg,
    this.hintStyle,
    required this.hintText,
    this.isSecureText,
    this.suffixIcon,
    this.background,
    this.onFilledSubmit,
    this.controller,
    this.validator,
    this.onChange,
    this.textAlign,
    this.borderRadius,
  });

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late FocusNode myFocusNode;
  bool hidePassword = true;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    myFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign ?? TextAlign.start,
      obscureText: widget.isPassword && hidePassword,
      focusNode: myFocusNode,
      style: widget.inputTextStyle ?? ThemeApp.font14grey4F500Weight,
      controller: widget.controller,
      onFieldSubmitted: (value) {
        if (widget.onFilledSubmit != null) {
          widget.onFilledSubmit!(value);
        }
      },
      decoration: InputDecoration(
        fillColor: widget.background ?? ThemeApp.grayF2,
        filled: true,
        isDense: true,
        contentPadding: widget.contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        hintStyle: widget.hintStyle ?? ThemeApp.font14grey4F500Weight,
        hintText: widget.hintText,

        prefixIcon: widget.showEye && (widget.isPassword ?? false)
            ? IconButton(
          onPressed: () {
            setState(() {
              hidePassword = !hidePassword;
            });
          },
          icon: Icon(
            hidePassword
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: ThemeApp.green73,
          ),
          iconSize: 23,
        )
            : null,
        enabledBorder: widget.enableBorder ??
            OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(16.w),
              borderSide: BorderSide(color: ThemeApp.green5B, width: 0.2.w),
            ),
        focusedBorder: widget.focusBorder ??
            OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(16.w),
              borderSide: BorderSide(color: ThemeApp.green5B, width: 0.2.w),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return widget.validationMsg ?? "validationText";
        } else {
          return null;
        }
      },
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onChanged: (value) {
        if (widget.onChange != null) {
          widget.onChange!(value);
        }
      },
    );
  }
  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }
}
