import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/icons/circular_icon.dart';
import 'package:be_trendy/common/widgets/images/BT_rounded_image.dart';
import 'package:be_trendy/common/widgets/texts/BT_brand_title_with_verified_icon.dart';
import 'package:be_trendy/common/widgets/texts/product_price_text.dart';
import 'package:be_trendy/common/widgets/texts/product_title_text.dart';
import 'package:be_trendy/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:be_trendy/features/shop/screens/checkout/checkout.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: BTAppBar(showBackArrow: true, title: Text("Cart", style: Theme
          .of(context)
          .textTheme
          .headlineSmall)),

      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(BTSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()),child: const Text("Checkout  265.5 DT"),style: ElevatedButton.styleFrom(backgroundColor: BTColors.primary),),
      ) ,

      body: const Padding(
        padding: EdgeInsets.all(BTSizes.defaultSpace),
        // Items in Cart
        child: BTCartItems(),
      ),
    );
  }
}

