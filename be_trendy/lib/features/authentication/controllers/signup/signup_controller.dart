import 'package:be_trendy/data/repositories/authentication/authentication_repository.dart';
import 'package:be_trendy/data/repositories/user/user_repository.dart';
import 'package:be_trendy/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:be_trendy/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../personalization/models/user_model.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find(); // here we used the getx controller to create an instance and call it each time (.find() to find the already created instance) in order to avoid the memory waste by creating an instance each time using the usual way ( SignupController(); )

  // Variables
  final hidePassword = true.obs; // Observable for hiding/showing password   and i'm gonna add this variable in the textFormField of the password in the signup widget
  final privacyPolicy = true.obs; // Observable for hiding/showing password   and i'm gonna add this variable in the textFormField of the password in the signup widget
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form Key for Form Validation
//-- SIGNUP
  Future <void> signup() async {
    try {
      // Start Loading
      /*BTFullScreenLoader.openLoadingDialog(
          "We are processing your information ...", BTImages.docerAnimation);*/

      // Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy check
      if (!privacyPolicy.value) {
        BTLoaders.warningSnackBar(
          title: "Accept Privacy Policy",
          message:
              "In order to create an account, you must read and accept the Privacy Policy & terms of use.",
        );
        return;
      }

      BTFullScreenLoader.openLoadingDialog(
          "We are processing your information ...", BTImages.docerAnimation);

      // Register user in the Firebase Authentication & save user data in the Firebase
      //  aka store the data entered in the form into the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in the firebase firestore
      // first we have to map the date on the user model
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      // we never created the user repository to get its instance in the first place so let's create it
      final userRepository = Get.put(UserRepository());

      await userRepository.saveUserRecord(newUser);
      // pass the model to a function which is going to save the data for us

      // Show success message
      BTLoaders.successSnackBar(
          title: "Congratulations",
          message: "Your account has been created! Verify email to continue.");

      // Move to verify Email Screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      BTFullScreenLoader.stopLoading();
      // Show some generic error to the user
      BTLoaders.errorSnackBar(title: "oh Snap!", message: e.toString());
    }
  }
}
