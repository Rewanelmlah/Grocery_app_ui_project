import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/sign_in/widgets/sign_in_form.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            MyStrings.signInImage,
            height: 278.h,
            width: 278.w,
          ),
          Text(
            'Enter your Email and password to access your account',
            style: MyStyles.font18BrownW400,
          ),
          SizedBox(height: 20.h),
          const SignInForm(),
        ],
      ),
    );
  }
}