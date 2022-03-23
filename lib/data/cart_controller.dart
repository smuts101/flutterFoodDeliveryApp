
import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/popular_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  final CartRepo carRepo;
  CartController({required this.carRepo});
  Map<int,CartModel> _items={};
  Map <int,CartModel> get items=>_items;

  void addItem(ProductModel product,int quantity){
   var totalQuantity=0;

    if(_items.containsKey(product.id!)){
       _items.update(product.id!, (value) {
         totalQuantity = value.quantity!+quantity;
         return CartModel(
           id:value.id,
           name:value.name,
           price:value.price,
           img:value.img,
           quantity:value.quantity!+quantity,
           isExist:true,
           time:DateTime.now().toString(),
         );
       });

       if(totalQuantity<=0){
         _items.remove(product.id);
       }
    }else{

      if(quantity>0){
        _items.putIfAbsent(product.id!, () {
          print("Adding item to the cart"+product.id!.toString()+" Quantity"+quantity.toString()+"length of the items is  "+_items.length.toString());;;
          _items.forEach((key, value) {
            print("quantity is "+value.quantity.toString());
          });

          return
            CartModel(
              id:product.id,
              name:product.name,
              price:product.price,
              img:product.img,
              quantity:quantity,
              isExist:true,
              time:DateTime.now().toString(),
            );}
        );
      }else{
          Get.snackbar("Item count", "You should atleast add one item in the cart !",
              backgroundColor:AppColors.mainColor,
              colorText:Colors.white
          );
      }

    }

    }
  bool existInCart(ProductModel product){
    if(_items.containsKey(product.id)){
      return true;
    }else{
      return false;
    }
  }
  int setQuantity(ProductModel product){
    var quantity = 0;
    if(_items.containsKey(product.id)){
      _items.forEach((key, value) {
        if(key==product.id){
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
  int get totalItems{
    var totalQuantity=0;
    _items.forEach((key, value) {
     totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }

  }

