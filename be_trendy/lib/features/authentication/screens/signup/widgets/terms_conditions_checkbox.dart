import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controllers/signup/signup_controller.dart';


class BTTermsAndConditionsCheckbox extends StatelessWidget {
  const BTTermsAndConditionsCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller =SignupController.instance;

    final dark = BTHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(
                    () => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)
            )
        ),
        // here  i wrapped the checkbox into a sizedBox to avoid the extra space at the left of the screen and wrapped the sizedbox with Obx because i'm gonna change the value of the box depending on the privacyPolicy variable's value which is the observable in the controller
        const SizedBox(width: BTSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
              children: [
                TextSpan(text: BTTexts.iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: '${BTTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? BTColors.white : BTColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? BTColors.white : BTColors.primary,
                )),
                TextSpan(text: BTTexts.and, style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: BTTexts.termsofUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? BTColors.white : BTColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? BTColors.white : BTColors.primary,
                )),
              ]
          ),),
      ],
    );
  }
}
