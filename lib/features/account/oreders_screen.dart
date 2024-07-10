import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project/features/account/views/account_screen.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/strings.dart';
import '../../core/themes/styles.dart';
import '../../core/widgets/custom_back_button.dart';
class OredersScreen extends StatelessWidget {
  const OredersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          leading:  CustomBackButton(
            onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>AccountScreen(),));},
          ),
          title: Text(
            "Order",
            style: MyStyles.font24OrangeW700,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75.h),
            child: TabBar(
              dividerColor: Color(0xff6D38050F).withOpacity(0.06),
              labelStyle: MyStyles.font20OrangeW700,
              unselectedLabelStyle: MyStyles.font20BrownW400,
              indicatorColor: MyColors.primaryColor,
              tabs: const [
                Tab(
                  text: "ongoing",
                ),
                Tab(
                  text: "history",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            NoOngoingOrdersBody(),
            ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  minLeadingWidth: 44.w,
                  leading: Transform.scale(
                    scale: 1.65,
                    child: Icon(Icons.shop,color: MyColors.primaryColor,),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order #345",
                        style: MyStyles.font18BrownW700,
                      ),
                      StatusText(
                        status: OrderStatus.delivered,
                      ),
                      Text(
                        "October 26, 2014",
                        style: MyStyles.font18BrownW700,
                      )
                    ],
                  ),
                  trailing: Text(
                    "\$700",
                    style: MyStyles.font20OrangeW700,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StatusText extends StatelessWidget {
  const StatusText({
    super.key,
    required this.status,
  });
  final OrderStatus status;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case OrderStatus.cancelled:
        return Text(
          "Cancelled",
          style: MyStyles.font10RedW400,
        );
      case OrderStatus.onGoing:
        return Text(
          "Cancelled",
          style: MyStyles.font15BlueW400,
        );
      default:
        return Text(
          "Delivered",
          style: MyStyles.font15GreenW400,
        );
    }
  }
}

enum OrderStatus { delivered, cancelled, onGoing }

class NoOngoingOrdersBody extends StatelessWidget {
  const NoOngoingOrdersBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          MyStrings.welcomeImage,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
          child: Text(
            "There is n ongoing order right now. You can order from home",
            style: MyStyles.font15BrownW700,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
