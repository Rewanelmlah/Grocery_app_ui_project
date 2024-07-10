import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';
import 'account_screen.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomTile> tiles = [
      CustomTile(
        title: "Edit Profile",
        leading:  Icon( Icons.person,color: MyColors.primaryColor),
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Change Password",
        leading:  Icon( Icons.key,color: MyColors.primaryColor),
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "My Cards",
        leading:  Icon( Icons.card_giftcard_sharp,color: MyColors.primaryColor),
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Edit Profile",
        leading:  Icon( Icons.person,color: MyColors.primaryColor),
        onTap: () {},
        trailing: Switch(
          activeTrackColor: MyColors.primaryColor,
          value: true,
          onChanged: (value) {},
        ),
      ),
      CustomTile(
        title: "Languages",
        leading:  Icon( Icons.g_translate,color: MyColors.primaryColor),
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Log Out",
        leading:  Icon( Icons.logout,color: MyColors.primaryColor),
        onTap: () {},
       // trailing: Icon(
        //  Icons.arrow_forward_ios_rounded,
        //  color: MyColors.secondaryColor,
        ),

    ];
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading:  CustomBackButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>AccountScreen(),));},),
        title: Text(
          "Profile",
          style: MyStyles.font24OrangeW700,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          if (index == 2) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tiles[index],
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    "App Settings",
                    style: MyStyles.font22BrownW400,
                  ),
                )
              ],
            );
          }
          return tiles[index];
        },
      ),
    );
  }
}