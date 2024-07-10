import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../views/mango_detail.dart';
class CustomProductsGrid extends StatelessWidget {
  const CustomProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      crossAxisCount: 2,
      mainAxisSpacing: 16.h,
      crossAxisSpacing: 16.w,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>  MangoScreen (),));},
          child: Container(
            margin: EdgeInsets.only(top: index % 2 == 0 ? 0 : 22.h),
            width: 164.w,
            height: index % 2 == 0 ? 194.h : 220.h,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Color(0xffC4C4C4), blurRadius: 13)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                20.r,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/pngegg 2.png',
                    height: 75.h,
                    width: double.infinity,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Original Mango',
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
        );
      },
    );
  }
}
