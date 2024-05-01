import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
class BTProductQuantityWithAddRemoveButton extends StatelessWidget {
  const BTProductQuantityWithAddRemoveButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BTCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: BTSizes.md,
          color: dark ? BTColors.white : BTColors.black,
          backgroundColor: dark ? BTColors.darkerGrey : BTColors.light,
        ),
        const SizedBox(width: BTSizes.spaceBtwItems),
        Text("2", style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: BTSizes.spaceBtwItems),
        const BTCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: BTSizes.md,
          // color: dark ? BTColors.white : BTColors.black,
          // backgroundColor: dark ? BTColors.darkerGrey : BTColors.light,
          color: BTColors.white,
          backgroundColor: BTColors.primary,
        ),
      ],
    );
  }
}

