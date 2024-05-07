import 'package:be_trendy/utils/exceptions/format_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../features/shop/models/banner_model.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find();

  // Variables
  final _db = FirebaseFirestore.instance;

  // Get all order related to current User

  Future <List<BannerModel>> fetchBanner() async{
    try{
      final result = await _db.collection('banners').where('active', isEqualTo: true).get();
      return result.docs.map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot)).toList();

    } on FirebaseException catch (e) {
      throw BTFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const BTFormatException();
    } on BTPlatformException catch (e){
      throw BTPlatformException(e.code).message;
    } catch (e){
      throw "Something went wrong. please try again";
    }
  }
  // Upload Banners to the cloud Firebase
}

