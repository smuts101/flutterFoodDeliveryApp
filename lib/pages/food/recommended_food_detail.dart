import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/extendable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          //Display background Img
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize:  Size.fromHeight(20),
              child: Container(
                //color: Colors.white,
                  child: Center(child: BigText(size: Dimensions.font26,text: "Chinese Side",)),
                width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),


            ),
            pinned: true,//display top bar
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/refreshments-4022016_640.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Displaying the long text
          SliverToBoxAdapter(
            child: Column(

                children: [
                  Container(
                    child:
                    ExpandableTextWidget (text:
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
                            "widget section start here,Expandable widget section start here,Expandable widget section start here"
                    ),
                    margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,),
                  )
                ],

            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,//Using the space available along the height
        children: [
         Container(
           padding: EdgeInsets.only(
             left: Dimensions.width20*2.5,
             right: Dimensions.width20*2.5,
             top: Dimensions.height10,
             bottom: Dimensions.height10,

           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor:Colors.white, backgroundColor: AppColors.mainColor,icon: Icons.remove),
              BigText(text: "\$12.88 "+" X "+" 0 ",
                color: AppColors.mainBlackColor,size: Dimensions.font26,),
              AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor:Colors.white, backgroundColor: AppColors.mainColor,icon: Icons.add),
            ],
           ),
         )
        ],
      ),
    );
  }
}
