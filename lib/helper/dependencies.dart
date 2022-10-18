import 'package:delivery_app/controllers/popular_product_controller.dart';
import 'package:delivery_app/data/api/api_client.dart';
import 'package:delivery_app/data/repository/pepular_prodact_repo.dart';
import 'package:get/get.dart';
Future<void> init()async {
  // ApiClient
  Get.lazyPut(()=>ApiClient(appBaseUrl: "http://www.dbtech.com"));
  // repo
  Get.lazyPut(() =>PopularProductRepo(apiClient: Get.find()));
  //controller
  Get.lazyPut(() =>PopularProductController(popularProductRepo: Get.find()));
}