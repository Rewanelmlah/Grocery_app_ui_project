import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/themes/strings.dart';
import '../../../../core/themes/styles.dart';
class PopularDealsListView extends StatelessWidget {
  const PopularDealsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Center(
          child: SizedBox(
            width: 150.w,
            height: 185.h,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              margin: EdgeInsetsDirectional.only(end: 15.w),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      MyStrings.appleImage,
                      height: 75.h,
                      width: double.infinity,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Red Apple',
                      style: MyStyles.font15BrownW700,
                    ),
                    Text(
                      '1kg,price',
                      style: MyStyles.font12GrayW400,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ 4,99',
                          style: MyStyles.font20OrangeW700,
                        ),
                        const CircleAvatar(
                          backgroundColor: MyColors.iconColor,
                          radius: 15,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
