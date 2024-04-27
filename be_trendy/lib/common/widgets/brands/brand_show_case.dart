import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'BT_Brand_Card.dart';
class BTBrandShowCase extends StatelessWidget {
  const BTBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return BTRoundedContainer(
      showBorder: true,
      borderColor: BTColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(BTSizes.md),
      margin: const EdgeInsets.only(bottom: BTSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with products Count
          const BTBrandCard(showBorder: false),
          const SizedBox(height: BTSizes.spaceBtwItems),



          // Brand Top 3 products images
          Row(
            children: images.map((image) =>brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }


  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: BTRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(BTSizes.md),
        margin: const EdgeInsets.only (right: BTSizes.sm),
        backgroundColor: BTHelperFunctions.isDarkMode(context) ? BTColors.darkerGrey : BTColors.light,
        child:  Image (
            fit: BoxFit.contain, image: AssetImage(image)),
      ), // TRoundedContainer
    ); // Expanded
  }
}


