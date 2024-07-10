import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/strings.dart';
import '../../../../core/themes/styles.dart';
import '../../../explore/views/categories_screen.dart';
import 'category_item.dart';
class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: 15.w,
          ),
          child: CategoryItem(),
        ),
        itemCount: 5,
      ),
    );
  }
}


