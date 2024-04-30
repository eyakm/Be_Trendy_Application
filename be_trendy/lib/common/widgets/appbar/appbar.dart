import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/device/device_utility.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class BTAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BTAppBar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.showBackArrow = false,
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BTSizes.md),
      //padding: const EdgeInsets.symmetric(horizontal: BTSizes.md),
      child: AppBar(
        //forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon:  Icon(Iconsax.arrow_left, color: dark ? BTColors.white : BTColors.dark,))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(BTDeviceUtils.getAppBarHeight());
}
