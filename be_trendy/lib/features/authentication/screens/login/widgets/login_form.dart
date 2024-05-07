import 'package:be_trendy/features/authentication/controllers/login/login_controller.dart';
import 'package:be_trendy/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';
class BTLoginForm extends StatelessWidget {
  const BTLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key : controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BTSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              controller: controller.email,
              validator: (value) => BTValidator.validateEmail(value),
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: BTTexts.email),
            ),
            const SizedBox(height: BTSizes.spaceBtwInputFields),

            //Password
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
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                  ),
                ),
              ),
            ),


            const SizedBox(height: BTSizes.spaceBtwInputFields / 2),

            //Remember me & forget password
            Row(
              children: [
                //Remember Me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value)),
                    const Text(BTTexts.rememberMe),
                  ],
                ),

                //forget password
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(BTTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: BTSizes.spaceBtwSections),

            // Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: BTColors.primary),onPressed: () =>  controller.emailAndPasswordSignIn(),child: const Text(BTTexts.signIn))),

            const SizedBox(height: BTSizes.spaceBtwItems),

            // create account button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()),child: const Text(BTTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
