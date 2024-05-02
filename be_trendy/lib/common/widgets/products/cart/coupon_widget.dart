import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';
class BTCouponCode extends StatelessWidget {
  const BTCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);

    return BTRoundedContainer(
      showBorder: true,
      backgroundColor: dark? BTColors.dark : BTColors.white,
      padding: const EdgeInsets.only (top: BTSizes.sm, bottom: BTSizes.sm, right: BTSizes.sm, left: BTSizes.md),
      child: Row(
        children: [
          Flexible(child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Have a promo Code ? Enter it here",
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
          ),


          // Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? BTColors.white.withOpacity(0.5) : BTColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))
                  ),
                  onPressed: () {},
                  child: const Text('Apply'))),
        ],
      ),
    );
  }
}
