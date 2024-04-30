import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/icons/circular_icon.dart';
import 'package:be_trendy/common/widgets/layouts/grid_layout.dart';
import 'package:be_trendy/features/shop/screens/home/home.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: BTAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          BTCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [BTGridLayout(itemCount: 6, itemBuilder: (_, index) => const BTProductCardVertical())],
          ),
        ),
      ),
    );
  }
}
