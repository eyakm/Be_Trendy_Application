import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:be_trendy/features/shop/screens/checkout/checkout.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
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
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()),style: ElevatedButton.styleFrom(backgroundColor: BTColors.primary),child: const Text("Checkout  265.5 DT"),),
      ) ,

      body: const Padding(
        padding: EdgeInsets.all(BTSizes.defaultSpace),
        // Items in Cart
        child: BTCartItems(),
      ),
    );
  }
}

