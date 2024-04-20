import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';

class BTFormDivider extends StatelessWidget{
  const BTFormDivider ({super.key, required this.divideText});
  final String divideText;
  @override
  Widget build(BuildContext context){
    final dark = BTHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? BTColors.darkGrey: BTColors.grey,thickness: 0.5,indent: 60,endIndent: 5)),
        Text(BTTexts.orSignInwith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? BTColors.darkGrey: BTColors.grey,thickness: 0.5,indent: 5,endIndent: 60)),
      ],
    );
  }
}