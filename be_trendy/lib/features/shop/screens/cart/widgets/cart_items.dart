import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
class BTCartItems extends StatelessWidget {
  const BTCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2 ,
      separatorBuilder: (_, __) => const SizedBox(height: BTSizes.spaceBtwSections),

      itemBuilder: (_, index) =>   Column(
        children: [
          // Cart item
          const BTCardItem(),
          if (showAddRemoveButtons) const SizedBox(height: BTSizes.spaceBtwItems),

          // Add Remove Button Row with total price
          if (showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  // Add & Remove Button
                  BTProductQuantityWithAddRemoveButton(),
                ],
              ),



              BTProductPriceText(price: "150"),

            ],
          ),

        ],
      ),
    );
  }
}

