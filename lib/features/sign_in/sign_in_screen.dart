import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/sign_in/widgets/sign_in_screen_body.dart';
import 'package:ui_final_project/features/welcome/welcome_screen.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/styles.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 16.sp,
          onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>WelcomeScreen(),));},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: MyColors.primaryColor,
          ),
        ),
        title: Text(
          'Sign In',
          style: MyStyles.font24OrangeW400,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: const SignInScreenBody(),
      ),
    );
  }
}