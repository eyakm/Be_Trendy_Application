import 'package:get/get.dart';
class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs; // point to the first index // obs : to make the integer variable carouselCurrentIndex observable so this variable can be observed by the getx observer
// sooo whenever there is a change inn this variable carouselCurrentIndex the getx observer is gonna change it in the ui
  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }

}