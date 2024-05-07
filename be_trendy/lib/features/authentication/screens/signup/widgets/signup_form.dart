import 'package:be_trendy/features/authentication/controllers/signup/signup_controller.dart';
import 'package:be_trendy/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:be_trendy/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class BTSignupForm extends StatelessWidget {
  const BTSignupForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    // final dark = BTHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BTSizes.spaceBtwSections),
        child: Column(
          children: [
            Row(
              children: [
                // first name
                Expanded(
                    child: TextFormField(
                      controller: controller.firstName,
                      validator: (value) => BTValidator.validateEmptyText("First name", value),
                      expands: false,
                      decoration: const InputDecoration(labelText: BTTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                    )
                ),

                const SizedBox(width: BTSizes.spaceBtwInputFields),

                // last name
                Expanded(
                    child: TextFormField(
                      controller: controller.lastName,
                      validator: (value) => BTValidator.validateEmptyText("Last name", value),
                      expands: false,
                      decoration: const InputDecoration(labelText: BTTexts.LastName, prefixIcon: Icon(Iconsax.user)),
                    )
                )

              ],
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // username
            TextFormField(
              controller: controller.username,
              validator: (value) => BTValidator.validateEmptyText("Username", value),
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => BTValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => BTValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(labelText: BTTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => BTValidator.validatePassword(value),
                //obscureText: true,
                obscureText: controller.hidePassword.value,
                decoration:  InputDecoration(
                  prefixIcon:const  Icon(Iconsax.password_check),
                  labelText: BTTexts.password,
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                  ),
                ),
              ),
            ),

            const SizedBox(height: BTSizes.spaceBtwInputFields),

            // Terms & conditions check box
            const BTTermsAndConditionsCheckbox(),

            const SizedBox(height: BTSizes.spaceBtwSections),
            /// Sign up Button
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: BTColors.primary),
                onPressed: () => controller.signup(),
                child: const Text(BTTexts.createAccount),
            ),
            ),



          ],
        ),
      ),
    );
  }
}

