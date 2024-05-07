import 'package:be_trendy/OnBoarding/Onboarding_controller.dart';
import 'package:be_trendy/features/authentication/screens/login/login.dart';
import 'package:be_trendy/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:be_trendy/navigation_menu.dart';
import 'package:be_trendy/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:be_trendy/utils/exceptions/format_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/platform_exceptions.dart';
class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // Variables
final deviceStorage = GetStorage();
final  _auth = FirebaseAuth.instance;


  // called from main.dart on app launch
@override
  void onReady(){
  FlutterNativeSplash.remove();
  screenRedirect();
}

// Function to show Relevant Screen
 screenRedirect() async{
  final user = _auth.currentUser;

    if (user!=null){
      if (user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
     /* if(kDebugMode){
        print("======= GET STORAGE Repo =====");
        print(deviceStorage.read("IsFirstTime"));
      }*/
      deviceStorage.writeIfNull("IsFirstTime", true);
      deviceStorage.read("IsFirstTime") != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnboardingScreen());
    }
  // Local Storage

  }

  /* ----------------- Email & Password sign-in ----------------------*/

/// [Email Authentication] - LOGIN
  Future <UserCredential> loginWithEmailAndPassword (String email, String password) async{
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FormatException catch (_){
      throw const BTFormatException();
    } on PlatformException catch (e){
      throw BTPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }


/// [Email Authentication] - REGISTER
Future <UserCredential> registerWithEmailAndPassword(String email, String password) async{
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e){
    throw BTFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e){
    throw BTFirebaseAuthException(e.code).message;
  } on FormatException catch (_){
    throw const BTFormatException();
  } on PlatformException catch (e){
    throw BTPlatformException(e.code).message;
  } catch (e){
    throw 'Something went wrong. Please try again';
  }
}

/// [Email Authentication] - ReAuthenticate user

/// [Email Authentication] - MAIL VERIFICATION
  Future <void> sendEmailVerification() async{
    try{
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FormatException catch (_){
      throw const BTFormatException();
    } on PlatformException catch (e){
      throw BTPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }


/// [Email Authentication] - FORGET PASSWORD

/*--------------------- Federated identity & social sign-in ------------------------*/

/// [Google Authentication] - GOOGLE

/// [Facebook Authentication] - FACEBOOK


/*-------------------- ./end  Federated identity & social sign-in ------------------------*/

/// [Logout User] - valid for any authentication
  Future <void> logout() async{
    try{
       await FirebaseAuth.instance.signOut();
       Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on FormatException catch (_){
      throw const BTFormatException();
    } on PlatformException catch (e){
      throw BTPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again';
    }
  }

/// [delete User] - remove user Auth and firebase Account
}