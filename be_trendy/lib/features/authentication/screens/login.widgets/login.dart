import 'package:be_trendy/common/styles/spacing_styles.dart';
import 'package:be_trendy/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:be_trendy/features/authentication/screens/signup.widgets/signup.dart';
import 'package:be_trendy/navigation_menu.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BTHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BTSpacingStyle.paddingWithAppBarHeight,
          child: Column(
          children: [
            /// Logo, Title & Sub-Title
            Column(
            crossAxisAlignment: CrossAxisAlignment.center, // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 150,
                image:AssetImage(dark ? BTImages.lightAppLogo : BTImages.darkAppLogo),
              ) ,
              Text(BTTexts.LoginTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: BTSizes.sm),
              Text(BTTexts.LoginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
            const login_form(),

            //Divider
            BTFormDivider(divideText: BTTexts.orSignInwith.capitalize!),
            const SizedBox(height: BTSizes.spaceBtwSections),

        // footer
            const BTSocialButtons(),

        // Column
           ],
          ),
        ),
      ),
    );
  }
}

class login_form extends StatelessWidget {
  const login_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: BTSizes.spaceBtwSections),
          child: Column(
            children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: BTTexts.email),
            ),
          const SizedBox(height: BTSizes.spaceBtwInputFields),

          //Password
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: BTTexts.password, suffixIcon: Icon(Iconsax.eye_slash),),
          ),
          const SizedBox(height: BTSizes.spaceBtwInputFields / 2),

          //Remeber me & forget password
          Row(
            children: [
              //Remember Me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(value: true, onChanged: (value){}),
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
              backgroundColor: BTColors.primary),onPressed: () => Get.to(() => const NavigationMenu()),child: const Text(BTTexts.signIn))),

          const SizedBox(height: BTSizes.spaceBtwItems),

          // create account button
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()),child: const Text(BTTexts.createAccount))),
                        ],
                      ),
        ),
    );
  }
}
