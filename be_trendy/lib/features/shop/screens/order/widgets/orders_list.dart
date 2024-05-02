import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class BTOrderListItems extends StatelessWidget {
  const BTOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      separatorBuilder: (_, __) => const SizedBox(height: BTSizes.spaceBtwItems),
      itemBuilder: (_, index) => BTRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(BTSizes.md),
        backgroundColor: dark ? BTColors.dark : BTColors.light,
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // first Row
            Row(
              children: [
                // 1- Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: BTSizes.spaceBtwItems /2),

                // 2- Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Processing", style: Theme.of(context).textTheme.bodyLarge!.apply(color: BTColors.primary, fontWeightDelta: 1)),
                      Text("18 May 2024", style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                // 3- Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: BTSizes.iconSm)),
              ],
            ),
            const SizedBox(height: BTSizes.spaceBtwItems),
            // second Row
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1- Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: BTSizes.spaceBtwItems /2),


                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Order", style: Theme.of(context).textTheme.labelMedium),
                            Text("[#256f2]", style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      // 1- Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: BTSizes.spaceBtwItems /2),


                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Shipping Date ", style: Theme.of(context).textTheme.labelMedium),
                            Text("20 May 2024", style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
