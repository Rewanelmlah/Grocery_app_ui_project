import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';
import 'package:ui_final_project/core/themes/styles.dart';
class FavoriteList extends StatefulWidget {
  @override
  _FavoriteListState createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  List<Map<String, String>> favorites = [
    {
      'title': 'Red Apple',
      'price': '\$4.99/kg',
      'image': 'assets/images/purepng 1.png', // Replace with your image URL
    },
    {
      'title': 'Salmon',
      'price': '\$50/kg',
      'image': 'assets/images/585d3c30cb11b227491c335d 1 (1).png', // Replace with your image URL
    },
    {
      'title': 'Avocado Bowl',
      'price': '\$24/st',
      'image': 'assets/images/Avocado-PNG-Clipart 1.png', // Replace with your image URL
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(favorites[index]['title']!),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            setState(() {
              favorites.removeAt(index);
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${favorites[index]['title']} dismissed'),
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
                  favorites[index]['image']!,
                  width: 56.w,
                  height: 61.h,
                  fit: BoxFit.cover,
                ),
                title: Text(favorites[index]['title']!,style: MyStyles.font18BrownW400,),
                subtitle: Row(
                  children: [
                    Icon(Icons.add_shopping_cart,color: MyColors.primaryColor,),
                    Text('Add to cart',style: TextStyle(color: MyColors.primaryColor),)
                  ],
                ),

                trailing:  Text(favorites[index]['price']!,style: MyStyles.font18BrownW400,),
              ),
            ),
          ),
        );
      },
    );
  }}
