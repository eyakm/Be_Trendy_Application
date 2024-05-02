
import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:be_trendy/common/widgets/layouts/grid_layout.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/features/shop/screens/store/widgets/category_tab.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/BT_Brand_Card.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../brand/all_brands.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: BTAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            BTCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_ /*here is a context that we won't use */,innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: BTHelperFunctions.isDarkMode(context) ? BTColors.black : BTColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(BTSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children:  [
                    const SizedBox(height: BTSizes.spaceBtwItems),
                    const BTSearchContainer(text: 'Search in Store', showborder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: BTSizes.spaceBtwSections),

                    //Featured Brands
                    BTSectionHeading(title: 'Featured Brands', onPressed: ()=> Get.to(() => const AllBrandsScreen())),
                    const SizedBox(height: BTSizes.spaceBtwItems / 1.5),
                    BTGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_ ,index) {
                      return const BTBrandCard(showBorder : false);
                    })


                  ],
                ),
              ),

              // Tabs
              bottom:  const BTTabBar(
                  tabs: [
                    Tab(child: Text('Dresses')),
                    Tab(child: Text('Accessories')),
                    Tab(child: Text('Shoes')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Shirts')),

                  ],),
            ),
          ];
        },

          body: const TabBarView(
            children: [
              BTCategoryTab(),
              BTCategoryTab(),
              BTCategoryTab(),
              BTCategoryTab(),
              BTCategoryTab(),
              BTCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}

