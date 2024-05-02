import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:be_trendy/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // AppBar
      appBar: const BTAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and Reviews are verified and are from people who use the same of device that you use."),
              const SizedBox(height: BTSizes.spaceBtwItems),


              // Overall Product Ratings
              const BTOverallProductRating(),
              const BTRatingBarIndicator(rating: 3.5),
              Text("18" , style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: BTSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(), // i can either wrap this in a list or duplicate it


            ],
          ),
        ),
      ),
    );
  }
}

