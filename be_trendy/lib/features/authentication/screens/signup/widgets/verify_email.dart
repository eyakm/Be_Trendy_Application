import 'package:be_trendy/data/repositories/authentication/authentication_repository.dart';
import 'package:be_trendy/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:be_trendy/utils/constants/text_strings.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});


  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController()); // create the controller instance
    return Scaffold(

      /// The close icon in the app bar is used to log out the user and redirect them to the login screen.
      /// This approach is taken to handle scenarios where the user enters the registration process,
      /// and the data is stored. Upon reopening the app, it checks if the email is verified.
      /// If not verified, the app always navigates to the verification screen.
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
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
              Text(email ?? '',
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
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: const Text(BTTexts.tContinue)),
              ),
              const SizedBox(height: BTSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: const Text(BTTexts.resendEmail)),
              ),
            ], // children
          ),
        ),
      ),
    );
  }

}
