import 'package:be_trendy/common/styles/spacing_styles.dart';
import 'package:be_trendy/features/authentication/screens/login.widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BTSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                  image: AssetImage(image),
                  width: BTHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwItems),
              Text(subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: BTColors.primary),
                    onPressed: onPressed, // we replaced this : onPressed: () => Get.to(() => const LoginScreen()), with the onPressed variable that we created containing user data
                    child: const Text(BTTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
