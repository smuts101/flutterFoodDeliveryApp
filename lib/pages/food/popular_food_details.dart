import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/extendable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Image start
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(
                        "images/refreshments-4022016_640.jpg"
                    )
                  )
                ),
              )
          ),
          //Background Image ends
          //Two Icons start
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )

          ),
          //Two Icons ends
          //Food Description infor start
          Positioned(
             left: 0,
             right: 0,
             bottom: 0,
             top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white

                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     AppColumn(text: "Chinese Side"),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    //SingleChildScrollView goes with Expanded() widget
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                        child:
                        SingleChildScrollView(child: ExpandableTextWidget(text:
                        "Expandable Expandable widget Expandable widget Expandable widget Expandable "
                            "widget Expandable widget Expandable widget widget Expandable widget"
                            " Expandable widget widget Expandable widget Expandable widget widget"
                            " Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget"
                            " Expandable widget widget Expandable widget Expandable widget widget Expandable"
                            " widget Expandable widget widget Expandable widget Expandable widget widget Expandable"
                            " widget Expandable widget widget Expandable widget Expandable widget widget "
                            "Expandable widget Expandable widget widget Expandable widget Expandable widget "
                            "widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable "
                            "widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget widget Expandable widget Expandable widget widget Expandable widget Expandable"
                            " widget  widget Expandable widget Expandable widget  widget section start here, Expandable "
                            "widget section start here,Expandable widget section start here,Expandable widget section start here"))
                    )
                  ],
                ) ,
              )
          ),
          //Food Description infor ends
        ],
      ),
      bottomNavigationBar: Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
              topRight: Radius.circular(Dimensions.radius20*2),
            ),
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                 children: [
                   Icon(Icons.remove,color:AppColors.signColor,),
                   SizedBox(width: Dimensions.width10/2,),
                   BigText(text: "0"),
                   SizedBox(width: Dimensions.width10/2,),
                   Icon(Icons.add,color: AppColors.signColor,)
                 ],
              ),
            ),
            Container(

              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor
              ),
            )
            
          ],
        ),
      ),


    );
  }
}
