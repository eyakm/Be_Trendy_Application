import 'package:be_trendy/common/widgets/images/BT_rounded_image.dart';
import 'package:be_trendy/features/shop/screens/product_details/product_detail.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../texts/BT_brand_title_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class BTProductCardVertical extends StatelessWidget {
  const BTProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BTShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(BTSizes.productImageRadius),
          //color: BTHelperFunctions.isDarkMode(context) ? BTColors.darkerGrey : BTColors.white,
          color: dark ? BTColors.darkerGrey : BTColors.white,
          //color: dark ? BTColors.dark : BTColors.light,
        ),
        child: Column(
          children: [
            // thumbnail , wishlistButton , discount tag
            BTRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(BTSizes.sm),
              backgroundColor: dark ? BTColors.dark : BTColors.light,
              child: Stack(
                children: [
                  const BTRoundedImage(
                    imageUrl: BTImages.productImage332,
                    applyImageRadius: true,
                  ),
      
                  // SaleTag
                  Positioned(
                    top: 12,
                    child: BTRoundedContainer(
                      radius: BTSizes.sm,
                      backgroundColor: BTColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: BTSizes.sm, vertical: BTSizes.xs),
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
            const SizedBox(height: BTSizes.spaceBtwItems / 2),
      
            //details
             const Padding(
              padding: EdgeInsets.only(left: BTSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BTPProductTitleText(title: 'Plaid Audrey Dress', smallSize: true),
                  SizedBox(height: BTSizes.spaceBtwItems / 2),
                  BTBrandTitleWithVerifiedIcon(title: 'FashionOne'),


                ],
              ),
            ),
            // add spacer to keep the height of each Box same in case 1 or 2 lines of heading
            // ps : it should be after the padding
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: BTSizes.sm),
                  child: BTProductPriceText(price: "250.0"),
                ),
                Container(
                  decoration: const  BoxDecoration(
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
    );
  }
}

