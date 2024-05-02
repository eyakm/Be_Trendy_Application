import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/layouts/grid_layout.dart';
import 'package:be_trendy/common/widgets/products/sortable/sortable_products.dart';
import 'package:be_trendy/common/widgets/texts/section_heading.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/brands/BT_Brand_Card.dart';
import 'brand_products.dart';
class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BTAppBar(title: Text("Brands"),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const BTSectionHeading(title: "Brands", showActionButton: false,),
              const SizedBox(height: BTSizes.spaceBtwItems),

              // Brands
              BTGridLayout(itemCount: 10, mainAxisExtent: 80, itemBuilder: (context, index) =>  BTBrandCard(showBorder : true, onTap: () =>Get.to(()=> const BrandProducts()) ) ),
            ],
          ),
        ),
      ),
    );
  }
}
