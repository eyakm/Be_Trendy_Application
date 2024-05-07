import 'package:be_trendy/common/widgets/shimmers/shimmer.dart';
import 'package:be_trendy/features/shop/controllers/banner_controller.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/BT_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class BTPromoSlider extends StatelessWidget {
  const BTPromoSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
   final controller = Get.put(BannerController()); // put create an instance of HomeController in controller
    return Obx(
      (){
        // Loader
        if(controller.isLoading.value) return const BTShimmerEffect(width: double.infinity, height: 190);

        // No data found
        if (controller.banners.isEmpty){
          return const Center(child: Text("No Data Found"));
        } else{
          return Column(
            children: [
              CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) => controller.updatePageIndicator(index),
                  ),
                  items: controller.banners.map((banner) =>  BTRoundedImage(imageUrl: banner.imageUrl, isNetworkImage: true,onPressed: () => Get.toNamed(banner.targetScreen) )).toList()
              ),
              const SizedBox(height: BTSizes.spaceBtwItems),
              Center(
                child: Obx(
                      () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < controller.banners.length; i++)
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
    );
  }
}
