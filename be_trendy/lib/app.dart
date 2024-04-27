import 'package:be_trendy/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'OnBoarding/Onboarding_view.dart';


class App extends StatelessWidget {
  final bool onboarding;
  const App({super.key, this.onboarding = false});
  //const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: BTAppTheme.lightTheme,
      darkTheme: BTAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: /*onboarding? const Home() :*/ const OnboardingView(),

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