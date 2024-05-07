import 'package:be_trendy/bindings/general_bindings.dart';
import 'package:be_trendy/routes/app_routes.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class App extends StatelessWidget {
  final bool onboarding;
  const App({super.key, this.onboarding = false});
  //const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BTAppTheme.lightTheme,
      darkTheme: BTAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      // debugShowCheckedModeBanner: false,

        // Show loader or Circular Progress Indicator  meanwhile Authentication Repository is deciding to show relevant screen
      home: const Scaffold(backgroundColor: BTColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white)))

      // const OnboardingScreen(),
      /*home: onboarding? const Home() :*/

      /*body: Center(

        child: TextButton(
          onPressed: ()async{
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool("onboarding", false);
          },
          child: const Text("authentication page"),
        ),

      ),*/


    );
  }
}