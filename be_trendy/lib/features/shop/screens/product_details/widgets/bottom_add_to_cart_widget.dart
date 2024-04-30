import 'package:be_trendy/common/widgets/icons/circular_icon.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
class BTBottomAddToCart extends StatelessWidget {
  const BTBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: BTSizes.defaultSpace, vertical: BTSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? BTColors.darkerGrey : BTColors.light ,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BTSizes.cardRadiusLg),
          topRight: Radius.circular(BTSizes.cardRadiusLg) ,
        ),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Row(
            children: [
              const BTCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: BTColors.darkerGrey,
                width: 40,
                height: 40,
                color: BTColors.white,
              ),

              const SizedBox(width: BTSizes.spaceBtwItems),
              Text("2" , style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: BTSizes.spaceBtwItems),

              const BTCircularIcon(
                icon: Iconsax.add,
                backgroundColor: BTColors.black,
                width: 40,
                height: 40,
                color: BTColors.white,
              ),

            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(BTSizes.md) ,
                backgroundColor: BTColors.black,
                side: const BorderSide(color:BTColors.black),
              ),
              child: const Text('Add to cart')
          ),
        ],
      ),
    );
  }
}
