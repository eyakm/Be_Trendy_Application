import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BTLoginHeader extends StatelessWidget {
  const BTLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    /// Logo, Title & Sub-Title

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image:AssetImage(dark ? BTImages.lightAppLogo : BTImages.darkAppLogo),
        ) ,
        Text(BTTexts.LoginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: BTSizes.sm),
        Text(BTTexts.LoginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

