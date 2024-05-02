import 'package:be_trendy/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:be_trendy/common/widgets/products/ratings/rating_indicator.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/image_strings.dart';
class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(BTImages.userProfileImage1)),
                const SizedBox(width: BTSizes.spaceBtwItems),
                Text("John Doe", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        const SizedBox(height: BTSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const BTRatingBarIndicator(rating: 3.8),
            const SizedBox(width: BTSizes.spaceBtwItems),
            Text("24 Nov 2023", style: Theme.of(context).textTheme.bodyMedium),

          ],
        ),

        const SizedBox(height: BTSizes.spaceBtwItems),
        const ReadMoreText("Great Job Eya! , i loved the application's UI. It was easy and fun to navigate through the application and make a nice purchase that i'm quite satisfied with. ",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BTColors.primary),
          lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BTColors.primary),
        ),
        const SizedBox(height: BTSizes.spaceBtwItems),

        // Company Reviews
        BTRoundedContainer(
          backgroundColor: dark ? BTColors.darkerGrey : BTColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(BTSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Eya Holdings", style: Theme.of(context).textTheme.titleMedium),
                    Text("24 Nov 2023", style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),

                const SizedBox(height: BTSizes.spaceBtwItems),
                const ReadMoreText("Nice Work!, Great UI. Creative super practical application to make nice purchases. ",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BTColors.primary),
                  lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BTColors.primary),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: BTSizes.spaceBtwSections),

      ],
    );
  }
}
