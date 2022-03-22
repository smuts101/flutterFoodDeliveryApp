import 'package:food_delivery_app/data/repository/popular_food_repo.dart';
import 'package:food_delivery_app/models/popular_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = []; // Underscore means is a private variable
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
   bool get isLoaded=>_isLoaded;

  Future <void> getPopularProductList() async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      print("Products here***************");
      _popularProductList=[];
      _popularProductList.addAll(product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded = true;
      update();

    }else{
      print(response.statusCode);
    }
  }

  


}