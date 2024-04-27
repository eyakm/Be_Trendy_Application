import 'package:be_trendy/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build (BuildContext  context){
     //final dark = BTHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BTSizes.defaultSpace)/*BTSpacingStyle.paddingWithAppBarHeight*/,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Title
              Text(BTTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: BTSizes.spaceBtwSections),

              /// Form
              const BTSignupForm(),

              //Divider
              BTFormDivider(divideText: BTTexts.orSignUpWith.capitalize!),
              const SizedBox(height: BTSizes.spaceBtwSections),

              // footer
              const BTSocialButtons(),

              ],
              )
        ),
          ),
        );



  }
}

