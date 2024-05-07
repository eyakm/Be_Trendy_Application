import 'package:be_trendy/common/widgets/shimmers/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class BTCategoryShimmer extends StatelessWidget {
  const BTCategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
        const SizedBox (width: BTSizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Image
              BTShimmerEffect(width: 55, height: 55, radius: 55),
              SizedBox(height: BTSizes.spaceBtwItems / 2),

              /// Text
              BTShimmerEffect(width: 55, height: 8),
            ],
          );
        }, // Column
      ), // ListView.separated
    );
  }

}