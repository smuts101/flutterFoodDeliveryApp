import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart'; //check internet connection when loading data from inter

class RecommendedPopularProductRepo extends GetxService{

  final ApiClient apiClient;//calling the api class
  RecommendedPopularProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async{

    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }

}