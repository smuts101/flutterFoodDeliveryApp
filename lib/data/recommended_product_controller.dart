import 'package:food_delivery_app/data/repository/popular_food_repo.dart';
import 'package:food_delivery_app/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_app/models/popular_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController{
  final RecommendedPopularProductRepo recommendedpopularProductRepo;

  RecommendedProductController({required this.recommendedpopularProductRepo});
  List<dynamic> _recommendedProductList = []; // Underscore means is a private variable
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future <void> getRecommendedProductList() async{
    Response response = await recommendedpopularProductRepo.getRecommendedProductList();
    if(response.statusCode==200){
      print("Products here***************");
      _recommendedProductList=[];
      _recommendedProductList.addAll(product.fromJson(response.body).products);
      print(_recommendedProductList);
      _isLoaded = true;
      update();

    }else{
      print(response.statusCode);
    }
  }



}