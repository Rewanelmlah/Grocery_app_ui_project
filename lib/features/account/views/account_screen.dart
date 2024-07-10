import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/core/themes/colors.dart';
import 'package:ui_final_project/features/account/views/profile_screen.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../../cart/payment_screen.dart';
import '../../layout/layout_screen.dart';
import '../oreders_screen.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomTile> tiles = [
      CustomTile(
        title: "profile",
        leading: Icon( Icons.person,color: MyColors.primaryColor),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ));
        },
      ),
      CustomTile(
        title: "orders",
        leading:Icon( Icons.shop,color: MyColors.primaryColor),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OredersScreen(),
            ),
          );
        },
      ),

    CustomTile(
      title: "Adress",
      leading:Icon( Icons.location_on_sharp,color: MyColors.primaryColor),
      onTap: () {

      },
    ),
      CustomTile(
        title: "Payment",
        leading:Icon( Icons.shop,color: MyColors.primaryColor),
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>PaymentScreen(),));
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          leading:  CustomBackButton(
            onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LayoutScreen(),));},
          ),
          title: Text(
            "Account",
            style: MyStyles.font24OrangeW700,
          ),
          centerTitle: true),
      body: ListView.builder(
          itemCount: 4, itemBuilder: (context, index) => tiles[index]),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
    this.trailing,
  });
  final String title;
  final Widget leading;
  final Widget? trailing;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: trailing,
      leading: leading,
      minLeadingWidth: 32.w,
      title: Text(
        title,
        style: MyStyles.font18BrownW700,
      ),
    );
  }
}