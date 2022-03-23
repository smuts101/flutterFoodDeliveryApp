import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/cart_controller.dart';
import 'package:food_delivery_app/data/repository/popular_food_repo.dart';
import 'package:food_delivery_app/models/popular_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = []; // Underscore means is a private variable
  List<dynamic> get popularProductList => _popularProductList;
  late  CartController _cart;
  bool _isLoaded = false;
   bool get isLoaded=>_isLoaded;

   //shopping cart
  int _quantity=0;
  int get quantity=>_quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems+_quantity;


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
  void setQuantity(bool isIncrement){
    if(isIncrement){
    //  print("increment"+quantity.toString());
   _quantity =checkQuantity(_quantity+1) ;
    }else{
    //  print("decrement"+quantity.toString());
      _quantity = checkQuantity(_quantity-1);
    }
    update();//telling ui update
  }
  int checkQuantity(int quantity){
    if((_inCartItems+quantity)<0){
      Get.snackbar("Item count", "You can't reduce more !",
         backgroundColor:AppColors.mainColor,
         colorText:Colors.white
      );
      return 0;
    }else if(_inCartItems+quantity>20){
      Get.snackbar("Item count", "You can't add more !",
          backgroundColor:AppColors.mainColor,
          colorText:Colors.white
      );
      return 20;
    }else{
      return quantity;
    }
  }
  void initProduct(ProductModel product,CartController cart){
    _quantity=0;
    _inCartItems=0;
    _cart = cart;
     var exist =false;
     exist = _cart.existInCart(product);
     print("exist or not "+exist.toString());
     if(exist){
       _inCartItems=_cart.setQuantity(product);
     }
    print("the quantity in the cart is  "+_inCartItems.toString());


    //if exit

    //get from storage _inCartItems=3


  }
  void addItem(ProductModel product,){

      _cart.addItem(product, _quantity);
      _quantity=0;
      _inCartItems=_cart.setQuantity(product);
      _cart.items.forEach((key, value) {
        print("the id is"+value.id.toString()+" The quantity is "+value.quantity.toString() );
      });

  }




}



