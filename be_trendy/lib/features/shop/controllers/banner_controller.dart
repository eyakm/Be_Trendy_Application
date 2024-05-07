import 'package:be_trendy/data/repositories/banners/banner_repository.dart';
import 'package:get/get.dart';

import '../../../utils/popups/loaders.dart';
import '../models/banner_model.dart';

class BannerController extends GetxController{
  // Variables
  final RxList<BannerModel> banners = <BannerModel>[].obs;
  final isLoading = false.obs;
  final carouselCurrentIndex = 0.obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  // point to the first index // obs : to make the integer variable carouselCurrentIndex observable so this variable can be observed by the getx observer
  // sooo whenever there is a change inn this variable carouselCurrentIndex the getx observer is gonna change it in the ui





  // Update page navigational Dots
  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }

  //Fetch Banners
  Future <void> fetchBanners() async{
    try{
      // Show loader while loading categories
      isLoading.value = true;
      // Fetch Banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanner();

      // Assign Banners
      this.banners.assignAll(banners);

    } catch(e){
      BTLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    } finally{
      // Remove loader
      isLoading.value= false;
    }
  }
}