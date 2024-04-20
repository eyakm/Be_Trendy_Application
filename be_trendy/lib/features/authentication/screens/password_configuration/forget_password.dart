import 'package:be_trendy/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(BTSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Headings
            Text(BTTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: BTSizes.spaceBtwItems),
            Text(BTTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: BTSizes.spaceBtwSections * 2),
            /// Text field
            TextFormField(
              decoration: const InputDecoration(labelText: BTTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: BTSizes.spaceBtwSections * 2),
            // Submit Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(BTTexts.submit))) // here i used Get.off() instead of Get.to() because i don't need the usser to come back to this screen so to not keep an instance of it
          ],


        ),
      ),
    );
  }
}
