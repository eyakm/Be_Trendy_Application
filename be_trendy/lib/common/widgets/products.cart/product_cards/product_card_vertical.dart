import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
class BTProductCardVertical extends StatelessWidget {
  const BTProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [BTShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(BTSizes.productImageRadius),
        color: BTHelperFunctions.isDarkMode(context) ? BTColors.darkerGrey : BTColors.white,
      ),
      child: const Column(
        children: [
          // thumbnail , wishlistButton , discount tag
          BTRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(BTSizes.sm),
            backgroundColor: dark? BTColors.dark : BTColors.light,
          ),
          //details
        ],
      ),
    );
  }
}
