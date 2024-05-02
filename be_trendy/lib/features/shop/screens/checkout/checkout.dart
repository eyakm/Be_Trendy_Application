import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/features/authentication/screens/signup.widgets/success_screen.dart';
import 'package:be_trendy/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:be_trendy/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:be_trendy/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:be_trendy/features/shop/screens/checkout/widgets/billing_payement_section.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return  Scaffold(
      appBar: BTAppBar(showBackArrow: true, title: Text("Order Reviews", style: Theme
          .of(context)
          .textTheme
          .headlineSmall)),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              // Items In Cart
              const BTCartItems(showAddRemoveButtons: false),
              const SizedBox(height: BTSizes.spaceBtwSections),


              // Coupons TextField
              const BTCouponCode(),
              const SizedBox(height: BTSizes.spaceBtwSections),


              // Billing Section
              BTRoundedContainer(
                padding: const EdgeInsets.all(BTSizes.md),
                showBorder: true,
                backgroundColor: dark ? BTColors.black : BTColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    BTBillingAmountSection(),
                    SizedBox(height: BTSizes.spaceBtwSections),

                    // Divider
                     Divider(),
                     SizedBox(height: BTSizes.spaceBtwSections),

                    // Payement Methods
                    BTBillingPaymentSection(),
                     SizedBox(height: BTSizes.spaceBtwSections),

                    // Address
                    BTBillingAddressSection(),
                    SizedBox(height: BTSizes.spaceBtwSections),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(BTSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: BTImages.successfulPaymentIcon,
              title: "Successfull Payment",
              subtitle: "Your order will be shippef soon ^_^ ! ",
              onPressed: () => Get.offAll(() => const NavigationMenu()),
          ),

        ),
          child: const Text("Checkout  265.5 DT"),
      ) ,


    ),
    );
  }
}

