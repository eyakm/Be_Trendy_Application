
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class BTSocialButtons extends StatelessWidget {
  const BTSocialButtons({super.key});
@override
Widget build (BuildContext context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
  Container(
    decoration: BoxDecoration (border: Border.all(color: BTColors.grey), borderRadius: BorderRadius.circular (100)),
    child: IconButton(
      onPressed: () {},
      icon: const Image(
        width: BTSizes.iconMd,
        height: BTSizes.iconMd,
        image: AssetImage(BTImages.google),
        ), // Image
  ), // IconButton
  ), // Container
  const SizedBox (width: BTSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration (border: Border.all(color: BTColors.grey), borderRadius: BorderRadius.circular (100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: BTSizes.iconMd,
              height: BTSizes.iconMd,
              image: AssetImage(BTImages.facebook),
            ), // Image
          ), // IconButton
        ), // Container
  ],
  );
}

}