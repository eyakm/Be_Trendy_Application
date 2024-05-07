import 'package:be_trendy/common/styles/spacing_styles.dart';
import 'package:be_trendy/features/authentication/screens/login/widgets/login_form.dart';
import 'package:be_trendy/features/authentication/screens/login/widgets/login_header.dart';
import 'package:be_trendy/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
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
            // Header
            const BTLoginHeader(),

            // Form
            const BTLoginForm(),

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

