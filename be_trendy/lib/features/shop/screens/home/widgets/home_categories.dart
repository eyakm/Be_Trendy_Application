import 'package:be_trendy/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class BTHomeCategories extends StatelessWidget {
  const BTHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return BTVerticalImageText(image: BTImages.clothIcon, title: 'Dresses', onTap: ()=> Get.to(() => const SubCategoriesScreen()));
        },
      ),
    );
  }
}






