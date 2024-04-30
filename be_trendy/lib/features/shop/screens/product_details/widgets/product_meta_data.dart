import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/images/BT_circular_image.dart';
import 'package:be_trendy/common/widgets/texts/BT_brand_title_with_verified_icon.dart';
import 'package:be_trendy/common/widgets/texts/product_price_text.dart';
import 'package:be_trendy/common/widgets/texts/product_title_text.dart';
import 'package:be_trendy/utils/constants/enums.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
class BTProductMetaData extends StatelessWidget {
  const BTProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            BTRoundedContainer(
              radius: BTSizes.sm,
              backgroundColor: BTColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: BTSizes.sm,vertical: BTSizes.xs),
              child:Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: BTColors.black)) ,
            ),
            const SizedBox(width: BTSizes.spaceBtwItems),
            // Price
            Text('250 DT', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: BTSizes.spaceBtwItems),
            const BTProductPriceText(price: '187.5', isLarge: true),
          ],
        ),

        const SizedBox(height: BTSizes.spaceBtwItems /1.5),

        // Title
        const BTPProductTitleText(title: "1950's vintage Plaids Audrey Dress"),
        const SizedBox(height: BTSizes.spaceBtwItems /1.5),

        // Stock Status
        Row(
          children: [
            const BTPProductTitleText(title: "Status"),
            const SizedBox(width: BTSizes.spaceBtwItems),
            Text(' In Stock', style:Theme.of(context).textTheme.titleMedium),

          ],
        ),
        const SizedBox(height: BTSizes.spaceBtwItems /1.5),

        // Brand
        Row(
          children: [
            BTCircularImage(image: BTImages.clothIcon,// here the clothIcon will be changed with the brand logo
            width: 32,
              height: 32,
              overlayColor: dark? BTColors.white : BTColors.black,
            ),
            const BTBrandTitleWithVerifiedIcon(title: "FashionOne",brandTextSize:TextSizes.medium ,),
          ],
        )

      ],
    );
  }
}
