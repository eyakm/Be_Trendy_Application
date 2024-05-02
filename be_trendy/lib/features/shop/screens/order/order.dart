import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:be_trendy/features/shop/screens/order/widgets/orders_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-- AppBar
      appBar: BTAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(BTSizes.defaultSpace),

        /// -- Orders
        child: BTOrderListItems(),
      ),
    );
  }
}