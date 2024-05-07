import 'package:be_trendy/data/repositories/authentication/authentication_repository.dart';
import 'package:be_trendy/features/authentication/screens/signup/widgets/success_screen.dart';
import 'package:be_trendy/utils/constants/text_strings.dart';
import 'package:be_trendy/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'dart:async';

import '../../../../utils/constants/image_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send Email Whenever Verify Screen appears & Set Timer for auto redirect

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send Email Verification link
  sendEmailVerification() async{
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      BTLoaders.successSnackBar(title: "Email sent", message: "Please check your inbox and verify your email.");
    }catch(e){
      BTLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  // timer to automatically redirect on Email Verification
  setTimerForAutoRedirect(){
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false){// ?? it means if email verified is null we're going to return false
        timer.cancel(); // so here as long as emailVerified is true we're going to close the timer
        Get.off(() => SuccessScreen(  // redirect to success screen
                image: BTImages.successfullRegisterAnimation,
                title: BTTexts.yourAccountCreatedTitle,
                subtitle: BTTexts.yourAccountCreatedSubTitle,
                onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
      }
    },
    );
  }

  // Manually check if Email Verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null  && currentUser.emailVerified){
      Get.off(() => SuccessScreen(
        image: BTImages.successfullRegisterAnimation,
        title: BTTexts.yourAccountCreatedTitle,
        subtitle: BTTexts.yourAccountCreatedSubTitle,
        onPressed: () => AuthenticationRepository.instance.screenRedirect(),
      ),
      );
    }
  }
}
