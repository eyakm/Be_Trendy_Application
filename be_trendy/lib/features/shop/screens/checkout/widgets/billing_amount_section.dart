import 'package:flutter/material.dart';
import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
class BTBillingAmountSection extends StatelessWidget {
  const BTBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // use the previous mainAxisAlignement or wrap the first Text widget(containing 'Subtotal') in Expanded Widget so it will take the maximum space and push the next text to the right side
          children: [
            Text("Subtotal ", style: Theme.of(context).textTheme.bodyMedium),
            Text("265.5 DT", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: BTSizes.spaceBtwItems / 2),

        // Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // use the previous mainAxisAlignement or wrap the first Text widget(containing 'Shipping fee') in Expanded Widget so it will take the maximum space and push the next text to the right side
          children: [
            Text("Shipping fee ", style: Theme.of(context).textTheme.bodyMedium),
            Text("7 DT", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),

        const SizedBox(height: BTSizes.spaceBtwItems / 2),


        // Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // use the previous mainAxisAlignement or wrap the first Text widget(containing 'Shipping fee') in Expanded Widget so it will take the maximum space and push the next text to the right side
          children: [
            Text("Tax fee ", style: Theme.of(context).textTheme.bodyMedium),
            Text("10.5 DT", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // use the previous mainAxisAlignement or wrap the first Text widget(containing 'Shipping fee') in Expanded Widget so it will take the maximum space and push the next text to the right side
          children: [
            Text("Order Total ", style: Theme.of(context).textTheme.bodyMedium),
            Text("283.0 DT", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
