import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../widgets/custom_products_grid.dart';
import 'categories_screen.dart';
class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = List.generate(
      10,
          (index) => "Fruits",
    );
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: CustomBackButton(
          onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CategoriesScreen(),));},
        ),
        title: Text(
          "Fruits",
          style: MyStyles.font24OrangeW400,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextFormField(
                    hintText: "Search",
                    prefixIcon: Transform.scale(
                      scale: 0.4,
                      child: Icon(Icons.search,color: MyColors.primaryColor,size: 32,),
                    ),
                  ),
                ),
                DefaultTabController(
                  length: tabs.length,
                  child: TabBar(
                    tabAlignment: TabAlignment.start,
                    indicatorColor: MyColors.primaryColor,
                    dividerColor: Color(0xff6D38050F).withOpacity(0.06),
                    isScrollable: true,
                    tabs: List.generate(
                      tabs.length,
                          (index) => Tab(
                        child: Text(
                          tabs[index],
                          style: MyStyles.font20BrownW400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: CustomProductsGrid(),
    );
  }
}
