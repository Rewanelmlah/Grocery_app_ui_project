import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/cart/payment_screen.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_back_button.dart';
import '../layout/layout_screen.dart';
import 'cart_body.dart';
class CartScreen extends StatelessWidget {
  const CartScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    leading: CustomBackButton(onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LayoutScreen(),)); },),
centerTitle: true,
title: Text('Cart',style: TextStyle(color: MyColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 24.sp),),
),
body:Column(
  children: [
    CartList(),
    TextButton(
      onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>PaymentScreen(),));},
      child: Container(
        height: 50.h,
        width: 350.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: MyColors.primaryColor,
        ),
        child: SizedBox(

          //width: double.infinity,

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text('CheckOut',style: TextStyle(fontSize: 18,color: Colors.white),)),
          ),
        ),
      ),
    ),
    SizedBox(height: 10,)
  ],
),
);
  }
}
