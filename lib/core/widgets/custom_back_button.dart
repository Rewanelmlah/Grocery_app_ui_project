import 'package:flutter/material.dart';

import '../../features/explore/views/categories_screen.dart';
import '../themes/colors.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomBackButton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
     onPressed:onPressed,
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: MyColors.primaryColor,
      ),
    );
  }
}
