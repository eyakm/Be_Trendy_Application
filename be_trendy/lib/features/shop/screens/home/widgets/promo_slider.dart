import 'package:be_trendy/features/shop/controllers/home_controller.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/BT_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class BTPromoSlider extends StatelessWidget {
  const BTPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
   final controller = Get.put(HomeController()); // put create an instance of HomeController in controller
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) =>  BTRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: BTSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  BTCircularContainer(
                    width: 20,
                    height: 4,
                    margin:  const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? BTColors.primary
                        : BTColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
