import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BTBillingPaymentSection extends StatelessWidget {
  const BTBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        BTSectionHeading(title: "Payment Method", buttonTitle: "Change", showActionButton: true, onPressed: (){}),
        const SizedBox(height: BTSizes.spaceBtwItems / 2),
        Row(
          children: [
            BTRoundedContainer(
              width: 60,
              height: 30,
              backgroundColor: dark ? BTColors.light : BTColors.white ,
              padding: const EdgeInsets.all(BTSizes.sm),
              child: const Image(image: AssetImage(BTImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: BTSizes.spaceBtwItems / 2),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
