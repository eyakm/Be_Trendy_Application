import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/images/BT_rounded_image.dart';
import 'package:be_trendy/common/widgets/texts/BT_brand_title_with_verified_icon.dart';
import 'package:be_trendy/common/widgets/texts/product_price_text.dart';
import 'package:be_trendy/common/widgets/texts/product_title_text.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';

class BTProductCardHorizontal extends StatelessWidget {
  const BTProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BTSizes.productImageRadius),
        color: dark ? BTColors.darkerGrey : BTColors.softGrey,
        //color: dark ? BTColors.dark : BTColors.light,
      ),
      child: Row(
        children: [

          // Thumbnail
          BTRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(BTSizes.sm),
            backgroundColor: dark ? BTColors.dark : BTColors.light,
            child:  Stack(
              children: [

                // Thumbnail Image
                const SizedBox(height: 120,width: 120,child: BTRoundedImage(imageUrl: BTImages.productImage34, applyImageRadius: true)),

                // SaleTag
                Positioned(
                  top: 12,
                  child: BTRoundedContainer(
                    radius: BTSizes.sm,
                    backgroundColor: BTColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: BTSizes.sm, vertical: BTSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: BTColors.black)),
                  ),
                ),


                // Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: BTCircularIcon(
                        icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child:  Padding(
              padding: const EdgeInsets.only(top: BTSizes.sm, left: BTSizes.sm),
              child: Column(
                children: [
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BTPProductTitleText(title: "white offshoulder cocktail dress",smallSize: true ),
                      SizedBox(height: BTSizes.spaceBtwItems /2),
                      BTBrandTitleWithVerifiedIcon(title:"FashionOne"),
                    ],
                  ),

                  const Spacer(),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Pricing
                      const Flexible(child: BTProductPriceText(price: "300 DT")),

                      // Add to Cart
                      Container(
                        decoration:  const BoxDecoration(
                          color: BTColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(BTSizes.cardRadiusMd),
                            bottomRight:Radius.circular(BTSizes.productImageRadius),
                          ),
                        ),
                        child:const SizedBox(
                            width:BTSizes.iconLg *1.2 ,
                            height: BTSizes.iconLg *1.2,
                            child:Center(child: Icon(Iconsax.add, color: BTColors.white))),
                      )
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
