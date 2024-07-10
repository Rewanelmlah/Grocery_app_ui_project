import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';
import 'package:gap/gap.dart';
import 'package:ui_final_project/features/home/home/widgets/categories_list_view.dart';
import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../home/home/widgets/category_item.dart';
import '../../layout/layout_screen.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
                onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LayoutScreen(),));},

                child: Icon(Icons.arrow_back_ios_new_outlined,color: MyColors.primaryColor,)),
            title: Text(
              "Categories",
              style: MyStyles.font24OrangeW400,
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextFormField(
                hintText: "Search",
                prefixIcon: Icon(Icons.search,color: MyColors.primaryColor,size: 32,)
              ),
            ),
          ),
          SliverGap(29.h),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 18,
                    (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 33.h),
                    child:  CategoryItem()
                  );
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 0.8))
        ],
      ),
    );
  }
}
