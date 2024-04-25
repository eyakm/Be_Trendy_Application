import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class BTSearchContainer extends StatelessWidget {
  const BTSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal,  this.showBackground = true,  this.showborder = true, this.onTap,
  });
//'Search in Store'

  final String text;
  final IconData? icon;
  // Iconsax.search_normal
  final bool showBackground, showborder;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric (horizontal: BTSizes.defaultSpace), child: Container(
        width: BTDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(BTSizes.md),
        decoration: BoxDecoration (
          color: showBackground ?  dark ? BTColors.dark : BTColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular (BTSizes.cardRadiusLg),
          border: showborder ? Border.all(color: BTColors.grey) : null,
        ), // BoxDecoration
        child: Row(
          children: [
            Icon(icon, color: BTColors.darkerGrey,),
            const SizedBox(width: BTSizes.spaceBtwItems),
            Text(text,style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ), // Container
      ),
    );
  }
}