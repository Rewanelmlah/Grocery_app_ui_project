import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/sign_up/widgets/sign_up_form.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            MyStrings.signUpImage,
            height: 278.h,
            width: 278.w,
          ),
          Text(
            'Please enter your information to create an account.',
            style: MyStyles.font18BrownW400,
          ),
          SizedBox(height: 20.h),
          const SignUpForm(),
        ],
      ),
    );
  }
}
