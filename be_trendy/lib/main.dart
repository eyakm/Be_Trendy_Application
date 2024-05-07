import  'package:be_trendy/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

Future<void> main () async {

  // Adding Widgets Binding
  final WidgetsBinding widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();

  //  Init local Storage (GetX local storage)
  await GetStorage.init();


  // Await Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

// Initialize firebase & Authentication Repository
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform).then ((FirebaseApp value) => Get.put(AuthenticationRepository())
  );
// Load all the material Design , themes, Localization, Bindings
  runApp(const App());
}