import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/widgets/custom_text_form_field.dart';
class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'In-Store Pick Up',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: MyColors.secondaryColor),
              ),
              Text(
                'Free',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: MyColors.secondaryColor),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Some Stores May Be Temporarily \n Unavailable.',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.keyboard_arrow_down,color: MyColors.secondaryColor,size: 22,)
            ],
          ),
          SizedBox(height: 20),
          CustomTextFormField(
            prefixIcon: Icon(Icons.search,color: MyColors.secondaryColor,size: 22,),
            hintText: 'Search For Town, Street, Zip Code...',
          ),
          SizedBox(height: 20),
          Container(
            color: Color(0xffFFE6CC),
            height: 241.h,
            width: 343.w,
            child: Column(
              children: [
                ListTile(
                  title: Text('Goteborg\nArkaden',style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text('1.4 MI',style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
                  trailing: Icon(Icons.arrow_forward_ios,color: MyColors.secondaryColor),
                  onTap: () {},
                ),
                SizedBox(height: 10,),
                Divider(color: Color(0xff6D3805),height: 20,thickness: 1,),
                ListTile(
                  title: Text('Kungsbacka\nKungsmassan',style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
                  subtitle: Text('17 MI',style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),),
                  trailing: Icon(Icons.arrow_forward_ios,color: MyColors.secondaryColor),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(height: 10),
          Container(color: Color(0xffFFE6CC),
            height: 80.h,
            width: 343.w,
            child:  ListTile(
              leading: Icon(Icons.shopping_basket,color: MyColors.secondaryColor,size: 32,),
              title: Text('See Items',style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 22),),
              trailing: Icon(Icons.arrow_forward_ios,color: MyColors.secondaryColor),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffFFE6CC),
            height: 210.h,
            width: 343.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'Payment Method',
                  style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),
                ),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(Icons.payment_outlined,size: 40,color: MyColors.secondaryColor,),
                  title: Text('Apple Pay',style: TextStyle(color: MyColors.secondaryColor,fontSize: 18),),
                  trailing: Icon(Icons.check),
                  onTap: () {},
                ),
                Divider(color: Color(0xff6D3805),height: 20,thickness: 1,),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(Icons.monetization_on,color: Colors.green,size: 40,),
                  title: Text('Cash On Delivery',style: TextStyle(color: MyColors.secondaryColor,fontSize: 18),),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffFFE6CC),
            height: 220.h,
            width: 343.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Summary',
                  style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 18),
                ),
                SizedBox(height: 20),
                Text('Subtotal:                                  \$137.00',style: TextStyle(color: MyColors.secondaryColor,fontSize: 18),),
                SizedBox(height: 10),
                Text('Tax:                                              \$4.50',style: TextStyle(color: MyColors.secondaryColor,fontSize: 18),),
                SizedBox(height: 10),
                Text('In-Store Pick Up:                           \$0.00',style: TextStyle(color: MyColors.secondaryColor,fontSize: 18),),
                Divider(color: Color(0xff6D3805),height: 20,thickness: 1,),
                SizedBox(height: 10,),
                Text(
                  'Total:                                  \$141.50',
                  style: TextStyle(color: MyColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ],

            ),


          ),
          SizedBox(height: 40),
          TextButton(
            onPressed: (){},
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
                  child: Center(child: Text('Check Out \$141.50',style: TextStyle(fontSize: 18,color: Colors.white),)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
