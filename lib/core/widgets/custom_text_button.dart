import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final String text;

  const CustomTextButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? MyColors.primaryColor,
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            343.w,
            50.h,
          ),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            width: 1,
            color: MyColors.primaryColor,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 17.sp,
          color: backgroundColor == null ? Colors.white : MyColors.primaryColor,
        ),
      ),
    );
  }
}
