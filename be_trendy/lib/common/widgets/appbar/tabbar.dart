import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/device/device_utility.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
class BTTabBar extends StatelessWidget  implements PreferredSizeWidget{
  // if i wanna add background color to tabs , i have to wrap them in Material widget
  //to do that we need (PreferredSize) widget and that's why created custom class (PreferredSizeWidget)
  const BTTabBar({super.key, required this.tabs});
final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? BTColors.black: BTColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: BTColors.primary,
        labelColor: dark ? BTColors.white : BTColors.primary,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BTDeviceUtils.getAppBarHeight());
}
