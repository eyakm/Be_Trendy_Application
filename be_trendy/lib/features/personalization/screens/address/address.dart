import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/features/personalization/screens/address/add_new_address.dart';
import 'package:be_trendy/features/personalization/screens/address/widgets/single_address.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: BTColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color:  BTColors.white),
      ),
      appBar: BTAppBar(
        showBackArrow: true,
        title: Text("Addresses", style: Theme.of(context).textTheme.headlineSmall),
      ),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              BTSingleAddress(selectedAddress: true),
              BTSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
