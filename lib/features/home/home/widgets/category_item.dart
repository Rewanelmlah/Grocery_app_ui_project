import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/strings.dart';
import '../../../../core/themes/styles.dart';
import '../../../explore/views/categories_Details.dart';
import '../../../explore/views/categories_screen.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CategoryDetailsScreen(),));},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundColor: const Color(0xffEDD0FF),
            child: Image.asset(
              MyStrings.fruitsImage,
              height: 83.h,
            ),
          ),
          Text(
            'Fruits',
            style: MyStyles.font16BrownW400,
          ),
        ],
      ),
    );
  }
}
