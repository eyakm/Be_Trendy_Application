import 'package:be_trendy/data/repositories/categories/category_repository.dart';
import 'package:be_trendy/utils/popups/loaders.dart';
import 'package:get/get.dart';

import '../models/category_model.dart';

class CategoryController extends GetxController{
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository()); // create a CategoryRepository instance for the first time to just call it later on with .find()
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

@override
  void onInit() {
  fetchCategories();
  super.onInit();
  }

// -- load category data
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

  // -- load selected category data

  // -- get Category or Sub-Category Products
}