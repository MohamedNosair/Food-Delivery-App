import 'package:delivery_app/utils/color.dart';
import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/app_column.dart';
import 'package:delivery_app/widgets/app_icon.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    print("current width is" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://image.shutterstock.com/image-photo/food-vegetable-bread-fruit-eco-600w-1560012359.jpg"),
                ),
              ),
            ),
          ),
          // icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(
                  icon: Icons.arrow_back_ios_new_outlined,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          // introduction
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize - 20,
            bottom: 0,
            child: Container(
              height: Dimensions.height120,
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimensions.radius20,
                  ),
                  topRight: Radius.circular(
                    Dimensions.radius20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                   Expanded(
                     child: SingleChildScrollView(
                       child: ExpandableTextWidget(
                        text: "Are you someone who loves finding and discovering new words? Are you a board game enthusiast? If you are, then this Word Finder is a tool you can't afford not to have. Whether you are into playing Scrabble, Words with Friends or any other word game, Word Finder will prove to be useful. It will help you both with word discovery, and as a reference tool, you and your playmates can use as a way to settle disputes about the validity of any particular word.",

                       ),
                     ),
                   ),
                ],
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10 ,
                right: Dimensions.width20,
                left: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,

              ),
              child: Row(
                children: [
                  const Icon(Icons.remove , color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10,),
                  const Icon(Icons.add , color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15 ,
                right: Dimensions.width15,
                left: Dimensions.width15,
              ),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(text: "\$10 Add to card",color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
