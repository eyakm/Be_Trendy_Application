import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/brands/BT_Brand_Card.dart';
import 'package:be_trendy/common/widgets/products/sortable/sortable_products.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BTAppBar(title: Text("H&M")),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(BTSizes.defaultSpace),
        child: Column(
          children: [
            // Brand Detail
            BTBrandCard(showBorder: true),
            SizedBox(height: BTSizes.spaceBtwSections),

            BTSortableProducts(),
          ],
        ),),
      ),
    );
  }
}
