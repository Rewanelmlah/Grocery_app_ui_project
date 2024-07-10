import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../account/views/account_screen.dart';
import '../cart/cart_screen.dart';
import '../explore/views/categories_screen.dart';
import '../favourite/favourite_screen.dart';
import '../home/home/home_screen.dart';
class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget> screen = [
    const HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screen[currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20.r),
            topEnd: Radius.circular(20.r),
          ),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            ),
          ],
        ),
        padding: EdgeInsetsDirectional.only(top: 5.h),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: MyColors.primaryColor,
          unselectedItemColor: MyColors.secondaryColor,
          iconSize: 22.sp,
          selectedFontSize: 12.sp,
          elevation: 30,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outlined,
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
