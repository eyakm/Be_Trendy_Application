import 'package:be_trendy/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //to not follow the default appbar containing a back arrow cause we don't need to go back to forget password screen
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Image(
                image: const AssetImage(BTImages.deliveredEmailIllustration),
                width: BTHelperFunctions.screenWidth() * 0.6
              ),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(BTTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwItems),
              Text(BTTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwSections),
              // Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()),child: const Text(BTTexts.done)),
              ),
              const SizedBox(height: BTSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {},child: const Text(BTTexts.resendEmail)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
