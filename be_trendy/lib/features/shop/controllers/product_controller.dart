import 'package:be_trendy/features/shop/models/product_model.dart';
import 'package:be_trendy/utils/popups/loaders.dart';
import 'package:get/get.dart';

import '../../../data/repositories/products/product_repository.dart';

class ProductController extends GetxController{
  static ProductController get instance => Get.find();

  final isLoading = false.obs;
  final _productRepository = Get.put(ProductRepository()); // create a CategoryRepository instance for the first time to just call it later on with .find()
  // RxList<ProductModel> allProducts = <ProductModel>[].obs;
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchFeaturedProducts();
    super.onInit();
  }


  void fetchFeaturedProducts ()  async {
    try{
      // show loader
      isLoading.value = true;
      final products = await _productRepository.getFeaturedProducts();
      
      featuredProducts.assignAll(products);





  }catch(e){
      BTLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
      } finally{
        isLoading.value = false;

      }
}
/*
// -- load Product data
  Future <void> fetchCategories() async{
    try{
      // Show loader while loading categories
      isLoading.value = true;

      // fetch categories from data source (Firestore , API , etc.)
      final categories = await _categoryRepository.getAllGategories();

      // Update the categories list
      allCategories.assignAll(categories);

      // Filter featured categories
      featuredCategories.assignAll(allCategories.where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());

    } catch(e){
      BTLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    } finally{
      // Remove loader
      isLoading.value= false;
    }
  }
*/


}