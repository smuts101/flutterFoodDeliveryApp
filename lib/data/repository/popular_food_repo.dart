import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart'; //check internet connection when loading data from inter

class PopularProductRepo extends GetxService{

  final ApiClient apiClient;//calling the api class
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{

   return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }

}