import 'package:be_trendy/Components/color.dart';
import 'package:be_trendy/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class BTSignupForm extends StatelessWidget {
  const BTSignupForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BTSizes.spaceBtwSections),
        child: Column(
          children: [
            Row(
              children: [
                // first name
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: BTTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                    )
                ),

                const SizedBox(width: BTSizes.spaceBtwInputFields),

                // last name
                Expanded(
                    child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: BTTexts.LastName, prefixIcon: Icon(Iconsax.user)),
                    )
                )

              ],
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Phone number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: BTTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Terms & conditions check box
            Row(
              children: [
                SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),// here  i wrapped the checkbox into a sizedBox to avoid the extra space at the left of the screen
                const SizedBox(width: BTSizes.spaceBtwItems),
                Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: '${BTTexts.iAgreeTo}', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: '${BTTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? BTColors.white : BTColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? BTColors.white : BTColors.primary,
                        )),
                        TextSpan(text: '${BTTexts.and}', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: BTTexts.termsofUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? BTColors.white : BTColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark ? BTColors.white : BTColors.primary,
                        )),
                      ]
                  ),),
              ],
            ),

            const SizedBox(height: BTSizes.spaceBtwSections),
            /// Sign up Button
            SizedBox(width: double.infinity, child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                      backgroundColor: BTColors.primary),
                onPressed: () => Get.to(()=> const VerifyEmailScreen()),
                child: const Text(BTTexts.createAccount),
            ),
            ),



          ],
        ),
      ),
    );
  }
}
