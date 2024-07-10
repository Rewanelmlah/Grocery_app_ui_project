import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/home/home/widgets/categories_list_view.dart';
import 'package:ui_final_project/features/home/home/widgets/popular_deals_list_view.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../explore/views/categories_Details.dart';
import '../../explore/views/categories_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Image.asset(
          MyStrings.homeCoverImage,
          height: 139.h,
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: MyStyles.font22BrownW400,
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CategoriesScreen(),));},
                child: Text(
                  'See All',
                  style: MyStyles.font18OrangeW400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        const CategoriesListView(),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular deals',
                style: MyStyles.font22BrownW400,
              ),
              GestureDetector(
                onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CategoryDetailsScreen(),));},
                  child: Text(
                    'See All',
                    style: MyStyles.font18OrangeW400,
                  ),
                ),

            ],
          ),
        ),
        SizedBox(height: 20.h),
        const PopularDealsListView(),
      ],
    );
  }
}