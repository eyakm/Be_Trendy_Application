import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/features/personalization/screens/address/address.dart';
import 'package:be_trendy/features/personalization/screens/profile/profile.dart';
import 'package:be_trendy/features/shop/screens/order/order.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BTPrimaryHeaderContainer(child: Column(
              children: [
                // AppBar
                BTAppBar(title:Text ("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: BTColors.white))),
                const SizedBox(height: BTSizes.spaceBtwSections),

                //User Profile Card
                  BTUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: BTSizes.spaceBtwSections),


              ],
            ),
            ),

            // Body
             Padding(
                padding: const EdgeInsets.all(BTSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const BTSectionHeading(title: "Account Settings", showActionButton: false),
                  const SizedBox(height: BTSizes.spaceBtwItems),

                  BTSettingsMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subtitle: "Set your delivery address",onTap: () => Get.to(() => const UserAddressScreen())),
                  BTSettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subtitle: "Add, remove products and move to checkout",onTap: (){}),
                  BTSettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subtitle: "In-progress and complete Orders",onTap: () => Get.to(() => const OrderScreen())),
                  BTSettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subtitle: "Withdraw balance to registered bank account",onTap: (){}),
                  BTSettingsMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subtitle: "List of all the discounted coupons",onTap: (){}),
                  BTSettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subtitle: "Set any kind of notification message",onTap: (){}),
                  BTSettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subtitle: "Manage data usage and connected accounts",onTap: (){}),


                  // App Settings
                  const SizedBox(height: BTSizes.spaceBtwSections),
                  const BTSectionHeading(title: "App Settings", showActionButton: false),
                  const SizedBox(height: BTSizes.spaceBtwItems),
                  const BTSettingsMenuTile(icon: Iconsax.document_upload, title: "Load Data", subtitle: "Upload Data to your Cloud Firebase"),
                  BTSettingsMenuTile(icon: Iconsax.location, title: "Geolocation", subtitle: "Set recommendation based on location",trailing: Switch(value: true, onChanged:  (value) {})),
                  BTSettingsMenuTile(icon: Iconsax.security_user, title: "Safe mode", subtitle: "Search result is safe for all ages",trailing: Switch(value: false, onChanged:  (value) {})),
                  BTSettingsMenuTile(icon: Iconsax.image, title: "HD Image Quality", subtitle: "Set image quality to be seen",trailing: Switch(value: false, onChanged:  (value) {})),

                  // Log out Button
                  const SizedBox(height: BTSizes.spaceBtwSections),
                   SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Logout")),
                  ),
                  const SizedBox(height: BTSizes.spaceBtwSections *2.5),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

