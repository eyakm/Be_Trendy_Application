import 'package:be_trendy/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class LoginController extends GetxController{


  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey <FormState> loginFormKey = GlobalKey<FormState>();

// i overrided this onInit to fetch the data from the local storage
  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';    // this is the key in the local storage
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';  // these two lines are optional if you don't want to remember the email and pwd of the user
    super.onInit();

  }



  /// Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {


      // Start Loading
      BTFullScreenLoader.openLoadingDialog('Logging you in...', BTImages.docerAnimation);


      // Check Internet Connectivity
      final isConnected= await NetworkManager.instance.isConnected();
      if (!isConnected) {
        BTFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if (!loginFormKey.currentState!.validate()) {
        BTFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using EMail & Password Authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword (email.text.trim(), password.text.trim());


      // Remove Loader
      BTFullScreenLoader.stopLoading();


      // Redirect
      AuthenticationRepository.instance.screenRedirect();

    } catch (e) {
      BTFullScreenLoader.stopLoading();
      BTLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }




    }
}