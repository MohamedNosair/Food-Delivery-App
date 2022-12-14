import 'package:delivery_app/pages/home/food_page_body.dart';
import 'package:delivery_app/utils/color.dart';
import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    print("current width is" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45 , bottom: Dimensions.height15 ,),
              padding: EdgeInsets.only(left: Dimensions.width20 , right: Dimensions.width20 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Egypt" ,color: AppColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text: "Tanta" , color: Colors.black54,),
                          const Icon(Icons.arrow_drop_down_outlined),
                        ],
                      )

                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.height45,
                      width: Dimensions.width45,
                      child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSize25,),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          const Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                  child: FoodPageBody(),
              ),
          ),
        ],
      ),
    );
  }
}
