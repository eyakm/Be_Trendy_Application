import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/images/BT_rounded_image.dart';
import 'package:be_trendy/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BTAppBar(title: Text("Dresses"),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const BTRoundedImage(width: double.infinity,imageUrl: BTImages.promoBanner2, applyImageRadius: true),
             const SizedBox(height: BTSizes.spaceBtwSections),

             // Sub Categories
             Column(
               children: [
                 // Heading
                 BTSectionHeading(title: "Cocktail Dresses", onPressed: (){}),
                 const SizedBox(height: BTSizes.spaceBtwItems /2),

                 SizedBox(
                   height: 120,
                   child: ListView.separated(
                     itemCount: 4,
                       scrollDirection: Axis.horizontal,
                       separatorBuilder: (context, index) => const SizedBox(width: BTSizes.spaceBtwItems),
                       itemBuilder : (context, index) => const BTProductCardHorizontal()
                   ),
                 ),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
