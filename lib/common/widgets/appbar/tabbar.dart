import 'package:flutter/material.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/device/device_utility.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add tha background color to tabs
  /// you have to wrap them in Material widget
  /// To do that we need [PreferredSize] Widget and that's why created custom class
  const MyTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? MyColors.black : MyColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: MyColors.primary,
        unselectedLabelColor: MyColors.darkGrey,
        labelColor: dark ? MyColors.white : MyColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}
