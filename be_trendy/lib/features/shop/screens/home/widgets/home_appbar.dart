import 'package:be_trendy/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';


import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class BTHomeAppBar extends StatelessWidget {
  const BTHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   BTAppBar(

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(BTTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: BTColors.grey)),
          Text(BTTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: BTColors.white)),
        ],
      ),
      actions: [BTCartCounterIcon(onPressed: () {}, iconColor: BTColors.white)],
    );
  }
}
