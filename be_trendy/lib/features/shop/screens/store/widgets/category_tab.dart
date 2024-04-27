import 'package:be_trendy/common/widgets/layouts/grid_layout.dart';
import 'package:be_trendy/common/widgets/products.cart/product_cards/product_card_vertical.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class BTCategoryTab extends StatelessWidget {
  const BTCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              // Brands per category
              const BTBrandShowCase(images: [
                BTImages.productImage30,
                BTImages.productImage31,
                BTImages.productImage32
              ]),
              // second brand
              const BTBrandShowCase(images: [
                BTImages.productImage33,
                BTImages.productImage30,
                BTImages.productImage31
              ]),
              const SizedBox(height: BTSizes.spaceBtwItems),

              //products
              BTSectionHeading(title: "you might like", onPressed: () {}),
              const SizedBox(height: BTSizes.spaceBtwItems),

              BTGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const BTProductCardVertical()),
              const SizedBox(height: BTSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
