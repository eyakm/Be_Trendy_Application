import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/texts/product_price_text.dart';
import 'package:be_trendy/common/widgets/texts/product_title_text.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
class BTProductAttributes extends StatelessWidget {
  const BTProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        // Selected Attribute Pricing & Description
        BTRoundedContainer(
          padding: const  EdgeInsets.all(BTSizes.md),
          backgroundColor: dark ? BTColors.darkerGrey : BTColors.grey ,
          child:  Column(
            children: [
              // Title, Price and Stock Status
              Row(
                children: [
                   const BTSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: BTSizes.spaceBtwItems),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Row(
                        children: [
                          const BTPProductTitleText(title: "Price : ", smallSize: true),
                          const SizedBox(width: BTSizes.spaceBtwItems),
                          // Actual Price
                          Text(
                            '100 DT',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: BTSizes.spaceBtwItems),

                          // Sale Price
                          const BTProductPriceText(price: "75"),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const BTPProductTitleText(title: "Stock : ", smallSize: true),
                          Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
              // Variation Description
              const BTPProductTitleText(
                  title:
                      "Women's 1950s Black Vintage Plaids Audrey Dress Sleeveless Spaghetti.\n A-Line Short Cocktail Swing Dress ",
                  smallSize: true,
                  maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: BTSizes.spaceBtwItems),

        // Attributes can be color or size .....etc that depends on the back-end(firebase)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const BTSectionHeading(title: "Colors", showActionButton: false),
             const SizedBox(height: BTSizes.spaceBtwItems /2 ),
            Wrap(
              spacing: 8,
              children: [
                BTChoiceClip(text: 'Black', selected: true, onSelected: (value){}),
                BTChoiceClip(text: 'Blue', selected: false,  onSelected: (value){}),
                BTChoiceClip(text: 'Red', selected: false,  onSelected: (value){}),
                BTChoiceClip(text: 'Green', selected: false,  onSelected: (value){}),
                BTChoiceClip(text: 'Yellow', selected: false,  onSelected: (value){}),
              ],
            )
          ],
        ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BTSectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: BTSizes.spaceBtwItems /2 ),
            Wrap(
              spacing: 8,
              children: [
                BTChoiceClip(text: 'EU 32', selected: false,onSelected: (value){}),
                BTChoiceClip(text: 'EU 34', selected: false,onSelected: (value){}),
                BTChoiceClip(text: 'EU 36', selected: true,onSelected: (value){}),
                BTChoiceClip(text: 'EU 38', selected: false, onSelected: (value){}),
                BTChoiceClip(text: 'EU 40', selected: false, onSelected: (value){}),
              ],
            )
          ],
        )
      ],
    );
  }
}

