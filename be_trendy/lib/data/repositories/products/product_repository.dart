import 'package:be_trendy/features/shop/models/product_model.dart';
import 'package:be_trendy/features/shop/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  // Variables
  final _db = FirebaseFirestore.instance;

  // Get limited featured products
  Future <List<ProductModel>> getFeaturedProducts() async{
    try{
      final snapshot = await _db.collection('Products').where('IsFeatured', isEqualTo: true).limit(4).get();
      return snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();

    } on FirebaseException catch (e){
      throw BTFirebaseAuthException(e.code).message;
    } on PlatformException catch (e){
      throw BTPlatformException(e.code).message;
    } catch (e){
      throw "Something went wrong. please try again";
    }
  }




  /*Future<void> uploadDummyData (List<ProductModel> products) async{
    try {
      // Upload all the products along with their Images *
      final storage = Get.put(BTFirebaseStorageService());

      // Loop through each product
      for (var product in products) {
        // Get ImageData link from the local assets
        final thumbnail = await storage.getImageDataFromAssets(
            product.thumbnail);
      // Upload Image and Get its URL
        final url =  await storage.uploadImageData('Products/Images', thumbnail, product.thumbnail.toString());
        // Assign URL to product. image attribute
        product.thumbnail = url;


        // Product list of images
        if (product.images != null && product.images!.isNotEmpty) {
          List<String> imagesUrl = [];
          for (var image in product.images!) {
            // Get image data link from local assets
            final assetImage = await storage.getImageDataFromAssets(image);
            // Upload image and get its URL
            final url = await storage.uploadImageData(
                'Products/Images', assetImage, image);
            // Assign URL to product.thumbnail attribute
            imagesUrl.add(url);
          }
            product.images!.clear();
            product.images!.addAll(imagesUrl);
          }


          // Upload Variation Images
          if (product.productType == ProductType.variable.toString()) {
            for (var variation in product.productVariations!) {
              // Get image data link from local assets
              final assetImage = await storage.getImageDataFromAssets(
                  variation.image);
              // Upload image and get its URL
              final url = await storage.uploadImageData(
                  'Products/Images', assetImage, variation.image);
              // Assign URL to variation.image attribute
              variation.image = url;
            }
          }
          // Store product in firebase
          await _db.collection("Products").doc(product.id).set(
              product.toJson());
        }


    } on FirebaseException catch (e) {
      throw BTFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw BTPlatformException(e.code).message;
    }
    throw 'Something went wrong. Please try again';
  }

*/
}
