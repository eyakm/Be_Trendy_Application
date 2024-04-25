import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/products.cart/product_cards/product_card_vertical.dart';
import 'package:be_trendy/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:be_trendy/features/shop/screens/home/widgets/home_categories.dart';
import 'package:be_trendy/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/BT_rounded_image.dart';
import '../../../../common/widgets/products.cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //const BTHomeAppBar();
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            BTPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  BTHomeAppBar(),
                  SizedBox(height: BTSizes.spaceBtwSections),

                  // Searchbar
                  BTSearchContainer(text: 'Search in Store'),
                  SizedBox(height: BTSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: BTSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        BTSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: BTSizes.spaceBtwItems),

                        //Categories
                        BTHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Body
            Padding(
              padding: EdgeInsets.all(BTSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  BTPromoSlider(banners: [BTImages.promoBanner1,BTImages.promoBanner2,BTImages.promoBanner3,],),
                  // Popular Product
                  BTProductCardVertical(),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

