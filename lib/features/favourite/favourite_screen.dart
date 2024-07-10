import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';

import '../../core/widgets/custom_back_button.dart';
import '../layout/layout_screen.dart';
import 'favourite_list.dart';
class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LayoutScreen(),)); },),
        centerTitle: true,
        title: Text('Favorite',style: TextStyle(color: MyColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 24.sp),),
      ),
      body: FavoriteList(),
    );
  }
}

