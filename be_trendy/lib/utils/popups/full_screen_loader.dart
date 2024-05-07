
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/loaders/animation_loader.dart';
import '../helpers/helper_functions.dart';
// A utility class for managing a full-screen loading dialog
class BTFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation. /// This method doesn't return anything.
  ///
  /// Parameters:
  /// - text: The text to be displayed in the loading dialog.
  /// - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible: false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: BTHelperFunctions.isDarkMode(Get.context!)? BTColors.dark: BTColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
              children: [
              const SizedBox (height: 250), // Adjust the spacing as needed
              BTAnimationLoaderWidget(text: text, animation: animation),
          ],
        ),
      ),
    ),
    );


  }

  // Stop the currently open loading dialog.
  // this method doesn't return anything
static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();  // Close the dialog using the navigator
}
  }