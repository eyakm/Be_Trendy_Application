import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/BT_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class BTProductImageSlider extends StatelessWidget {
  const BTProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return BTCurvedEdgeWidget(
      child: Container(
        color: dark ? BTColors.darkerGrey : BTColors.light,
        child: Stack(
          children: [

            //Main Large Image
            const SizedBox(
                height:400,
                child: Padding(
                  padding: EdgeInsets.all(BTSizes.productImageRadius *2 ),
                  child: Center(child: Image(image: AssetImage(BTImages.productImage332))),
                )
            ),

            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: BTSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: BTSizes.spaceBtwItems),
                  itemBuilder: (_, index) => BTRoundedImage(
                      width: 80,
                      backgroundColor:
                      dark ? BTColors.dark : BTColors.white,
                      border: Border.all(color: BTColors.primary),
                      padding: const EdgeInsets.all(BTSizes.sm),
                      imageUrl: BTImages.productImage33red),
                ),
              ),
            ),

            const BTAppBar(
              showBackArrow: true,
              actions: [
                BTCircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            )
          ],
        ),
      ),
    );
  }
}
