import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/widgets/custom_text_form_field.dart';
import 'package:ui_final_project/features/cart/payment_body.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_back_button.dart';
import '../layout/layout_screen.dart';
import 'cart_screen.dart';
class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CustomBackButton(onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CartScreen (),)); },),
          centerTitle: true,
        title: Text('Payment',style: TextStyle(color: MyColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 24.sp),),
    ),
    body: PaymentBody(),
    );
  }}