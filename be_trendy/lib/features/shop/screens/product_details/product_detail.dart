import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:be_trendy/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:be_trendy/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:be_trendy/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:be_trendy/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../product_reviews/product_reviews.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return   Scaffold(
      bottomNavigationBar: const BTBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1- Product Image Slider
            const BTProductImageSlider(),

            // 2- Product Details
            Padding(
              padding: const EdgeInsets.only(right: BTSizes.defaultSpace, left: BTSizes.defaultSpace,bottom: BTSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & share
                  const BTRatingAndShare(),

                  // Price, Title, Stock & Brand
                  const BTProductMetaData(),
                  // Attributes
                  const BTProductAttributes(),
                  const SizedBox(height: BTSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"))),
                  const SizedBox(height: BTSizes.spaceBtwSections),


                  // Description
                  const BTSectionHeading(title: "Description",showActionButton: false),
                  const SizedBox(height: BTSizes.spaceBtwItems),
                  const ReadMoreText(
                    "here i will put a description for the 1950's vintage Plaids Audrey Dress, like the fabric, pattern, style, brand as well as other specific. ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "show more",
                    trimExpandedText: "less",
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: BTSizes.spaceBtwItems),
                  Row(
                    children: [
                      BTSectionHeading(title: "Reviews (199)", onPressed: () {}, showActionButton: false),
                      IconButton(icon:const Icon(Iconsax.arrow_right_3, size: 18) ,onPressed: ()=> Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: BTSizes.spaceBtwSections),




                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

