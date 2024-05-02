import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/common/widgets/layouts/grid_layout.dart';
import 'package:be_trendy/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:be_trendy/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:be_trendy/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';
class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: BTAppBar(title: Text("Popular Products"),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(BTSizes.defaultSpace),
          child:  BTSortableProducts(),
        ),
      ),
    );
  }
}

