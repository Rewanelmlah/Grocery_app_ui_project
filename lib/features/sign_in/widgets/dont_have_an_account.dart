import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_final_project/features/layout/layout_screen.dart';

import '../../../core/themes/styles.dart';
import '../../sign_up/sign_up_screen.dart';


class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: MyStyles.font16BrownW400,
          ),
          TextSpan (
            text: ' Sign Up',
            style: MyStyles.font16OrangeW400,
             recognizer: TapGestureRecognizer()
                ..onTap = () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>SignUpScreen(),));},
          ),
        ],
      ),
    );
  }
}
