import 'package:be_trendy/features/authentication/screens/login.widgets/login.dart';
import 'package:be_trendy/features/authentication/screens/signup.widgets/success_screen.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/text_strings.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/colors.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
// Padding to Give Default Equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: const AssetImage(BTImages.staticSuccessIllustration),
                  width: BTHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(BTTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwItems),
              Text("support@ekapp.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwItems),
              Text(BTTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: BTColors.primary),
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: BTImages.staticSuccessIllustration,
                          title: BTTexts.yourAccountCreatedTitle,
                          subtitle: BTTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ),),
                    child: const Text(BTTexts.tContinue)),
              ),
              const SizedBox(height: BTSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(BTTexts.resendEmail)),
              ),
            ], // children
          ),
        ),
      ),
    );
  }

}
