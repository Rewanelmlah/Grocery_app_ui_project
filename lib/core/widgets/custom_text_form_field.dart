import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/styles.dart';
import '../themes/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isObscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: MyStyles.font16BrownW400,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: MyStyles.font16GrayW400,
        filled: true,
        fillColor: MyColors.textFormFieldFilledColor,
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
