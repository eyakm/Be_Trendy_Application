import 'package:be_trendy/features/shop/screens/home/home.dart';
import 'package:be_trendy/utils/constants/colors.dart';
import 'package:be_trendy/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

import 'main.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController()); // creation of an instance of NavigationController
    final darkMode  = BTHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx( // here we wrapped the NavigationBar in a Obx to reconstruct it each time
        // obx is the observer
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? BTColors.black : BTColors.white,
          indicatorColor: darkMode ? BTColors.white.withOpacity(0.1) : BTColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home),label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop),label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart),label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user),label: 'Profile'),
          ],
        ),
      ),
      body: Obx( () => controller.screens[controller.selectedIndex.value]) ,
    );
  }
}

class NavigationController extends GetxController{
  // obs is what being observed
  final Rx<int> selectedIndex = 0.obs; // whenever is going to change this 0 its going to change whatever in this obx => all that is thanks to state management Getx

  // creation of 4 widgets as a screen
  final screens = [const HomeScreen(),Container(color: Colors.purple),Container(color: Colors.orange),Container(color: Colors.blue),];
}
