import 'package:be_trendy/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:be_trendy/features/shop/screens/home/widgets/home_categories.dart';
import 'package:be_trendy/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //const BTHomeAppBar();
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const BTPrimaryHeaderContainer(
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
                  ),
                   SizedBox(height: BTSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            Padding(
                padding: const EdgeInsets.all(BTSizes.defaultSpace),
                child: Column(
                  children: [

                    // Promo Slider
                    const BTPromoSlider(
                      banners: [BTImages.promoBanner1, BTImages.promoBanner2, BTImages.promoBanner3,],),
                    const SizedBox(height: BTSizes.spaceBtwSections,),


                     BTSectionHeading(title: 'Popular Products',onPressed: (){}),
                    const SizedBox(height: BTSizes.spaceBtwItems),
                    // Popular Product
                    BTGridLayout(itemCount:4, itemBuilder: (_, index) => const BTProductCardVertical(),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

