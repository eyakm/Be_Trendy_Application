import 'package:be_trendy/common/widgets/images/BT_circular_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class BTVerticalImageText extends StatelessWidget {
  const BTVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = BTColors.white,
    this.isNetworkImage = true,
    this.backgroundColor ,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BTSizes.spaceBtwItems),
        child: Column(
          children: [
            BTCircularImage(image: image, fit: BoxFit.fitWidth, padding: BTSizes.sm * 1.4,isNetworkImage: isNetworkImage,backgroundColor: backgroundColor,overlayColor: dark? BTColors.light: BTColors.dark),
          /*Container(
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(BTSizes.sm),
          decoration: BoxDecoration(
              color: backgroundColor ?? (dark ? BTColors.black : BTColors.white),
              borderRadius: BorderRadius.circular(100)
          ),
          child: Center(
            child: Image(image: AssetImage(image),fit: BoxFit.cover, color: dark ? BTColors.light : BTColors.dark),
          ),
        ),*/

        // Text
          SizedBox(height: BTSizes.spaceBtwItems / 2 ),
          SizedBox(
          width: 55,
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
            maxLines: 1 ,
            overflow: TextOverflow.ellipsis,

          ),
          ),


          ],
        ),
      ),
    );
  }
}