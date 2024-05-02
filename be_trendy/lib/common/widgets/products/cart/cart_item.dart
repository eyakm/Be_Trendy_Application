import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/BT_rounded_image.dart';
import '../../texts/BT_brand_title_with_verified_icon.dart';
import '../../texts/product_title_text.dart';
class BTCardItem extends StatelessWidget {
  const BTCardItem({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        BTRoundedImage(imageUrl: BTImages.productImage31,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(BTSizes.sm),
          backgroundColor: dark ? BTColors.darkerGrey : BTColors.light ,
        ),


        const SizedBox(width: BTSizes.spaceBtwItems),

        // Title, Price, & size
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BTBrandTitleWithVerifiedIcon(title: "FashionOne"),
              const Flexible(child: BTPProductTitleText(title: "Scarlet Darkness Women 2024 Summer Dress Square Neck Sleeveless High Low Fairy Dress Steampunk Dress", maxLines: 1)),
              // Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Color : ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green", style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: " Size : ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "EU-38", style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
