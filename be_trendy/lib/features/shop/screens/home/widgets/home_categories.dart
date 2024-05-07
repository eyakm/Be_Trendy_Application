import 'package:be_trendy/features/shop/controllers/category_controller.dart';
import 'package:be_trendy/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/shimmers/category_shimmer.dart';

class BTHomeCategories extends StatelessWidget {
  const BTHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(
      () {
        if (categoryController.isLoading.value) return const BTCategoryShimmer();

        if(categoryController.featuredCategories.isEmpty){
          return Center (child: Text('No Data Found!' , style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)));
        }
        return SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoryController.featuredCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){
              final category = categoryController.featuredCategories[index];
              return BTVerticalImageText(image: category.image, title: category.name, onTap: ()=> Get.to(() => const SubCategoriesScreen()));
            },
          ),
        );
      });
  }
}






