import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';

import '../../../core/widgets/custom_back_button.dart';
import 'categories_Details.dart';


class MangoScreen extends StatefulWidget {
  @override
  _MangoScreenState createState() => _MangoScreenState();
}

class _MangoScreenState extends State<MangoScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: CustomBackButton(
           onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CategoryDetailsScreen(),));},
         ),
       ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            Center(
                child: Image.asset(
                  'assets/images/pngegg 2.png', // Replace with your image URL
                  height: 243.h,
                  width: 308.w,
                ),
              ),
            SizedBox(height: 16),
            Text(
              'Original Mango',
              style: TextStyle(color: MyColors.secondaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$3.00',
              style: TextStyle(
                fontSize: 24,
                  color: MyColors.secondaryColor,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Golden Blue delicious mangoes delivered to your house in the most hygienic way ever. '
                  'Best for eating your fruit raw and can be made into shakes and cakes.',
              style: TextStyle(fontSize: 16,color: MyColors.secondaryColor,),
            ),
            SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45.h,
                  width: 226.w,
                  decoration: BoxDecoration(color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(32)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(64)
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                          icon: Icon(Icons.remove,color: MyColors.secondaryColor,),
                        ),
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(fontSize: 18,color: MyColors.secondaryColor,),
                      ),
                      Container(

                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(64)
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: Icon(Icons.add,color: MyColors.secondaryColor,),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Add to favorites functionality
                  },
                  icon: Icon(Icons.favorite_border,color: MyColors.primaryColor,size: 30,),
                ),
              ],
            ),
            SizedBox(height: 64,),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 50.h,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyColors.primaryColor,
                ),

                  child: Center(child: Text('Add to cart',style: TextStyle(fontSize: 18,color: Colors.white),)),


              ),
            ),
          ],
        ),
      ),
    );
  }
}