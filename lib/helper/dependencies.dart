import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/data/cart_controller.dart';
import 'package:food_delivery_app/data/popularProductController.dart';
import 'package:food_delivery_app/data/recommended_product_controller.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/data/repository/popular_food_repo.dart';
import 'package:food_delivery_app/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL)); //calling apiclient class
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedPopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(()=>CartRepo());
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() =>RecommendedProductController(recommendedpopularProductRepo: Get.find()));
  Get.lazyPut(() => CartController(carRepo: Get.find()));
}