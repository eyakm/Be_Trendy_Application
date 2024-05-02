import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/BT_circular_image.dart';
import '../texts/BT_brand_title_with_verified_icon.dart';
class BTBrandCard extends StatelessWidget {
  const BTBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
final bool showBorder;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = BTHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      //Container design
      child: BTRoundedContainer(
        padding: const EdgeInsets.all(BTSizes.sm),
        //showBorder:true ,
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Icon
            Flexible(
              child: BTCircularImage(
                isNetworkImage: false,
                image: BTImages.clothIcon,
                backgroundColor:Colors.transparent ,
                overlayColor: isDark ? BTColors.white : BTColors.black,
              ),
            ),
            const SizedBox(height: BTSizes.spaceBtwItems / 2),


            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min, // to take only the minimum space
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BTBrandTitleWithVerifiedIcon(title: 'H&M',brandTextSize: TextSizes.large),
                  Text('77 products',overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
