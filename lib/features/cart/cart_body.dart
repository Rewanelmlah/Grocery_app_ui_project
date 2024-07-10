import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/styles.dart';
class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  List<Map<String, String>> carts = [
    {
      'title': 'Red Apple',
      'price': '\$4.99/kg',
      'image': 'assets/images/purepng 1.png', // Replace with your image URL
    },
    {
      'title': 'Banana',
      'price': '\$4.99/kg',
      'image': 'assets/images/PikPng 1.png', // Replace with your image URL
    },
    {
      'title': 'Avocado Bowl',
      'price': '\$24/st',
      'image': 'assets/images/Avocado-PNG-Clipart 1.png', // Replace with your image URL
    },
    {
      'title': 'Salmon',
      'price': '\$50/kg',
      'image': 'assets/images/585d3c30cb11b227491c335d 1 (1).png', // Replace with your image URL
    },

  ];
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return
         Expanded(
           child: ListView.builder(
              itemCount: carts.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(carts[index]['title']!),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      carts.removeAt(index);
                    });
           
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${carts[index]['title']} dismissed'),
                      ),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: SizedBox(
                    height: 100.h,
                    width: 400.w,
                    child: Card(
           
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: ListTile(
                        leading: Image.asset(
                          carts[index]['image']!,
                          width: 56.w,
                          height: 61.h,
                          fit: BoxFit.cover,
                        ),
                        title: Text(carts[index]['title']!,style: MyStyles.font18BrownW400,),
                        subtitle:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(64)
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (quantity > 1) quantity--;
                                    });
                                  },
                                  icon: Icon(Icons.remove,color: MyColors.secondaryColor,),
                                ),
                              ),
                            ),
                            Text(
                              quantity.toString(),
                              style: TextStyle(fontSize: 18,color: MyColors.secondaryColor,),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(64)
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  icon: Icon(Icons.add,color: MyColors.secondaryColor,),
                                ),
                              ),
                            ),
                          ],
                        ),
           
                        trailing:  Text(carts[index]['price']!,style: MyStyles.font18BrownW400,),
                      ),
                    ),
                  ),
                );
              },
                   ),
         );

  }}