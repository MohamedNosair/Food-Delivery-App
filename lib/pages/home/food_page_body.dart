import 'package:delivery_app/utils/color.dart';
import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/icon_and_text_widget.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_column.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;

  var scaleFactor = 0.8;

  double height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  void disPose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        //dots
         DotsIndicator(
          dotsCount: 5,
          position: currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius5)),
          ),
        ),
        //popular text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           BigText(
               text: "Popular",
           ),
           SizedBox(
             width: Dimensions.width10,
           ),
           Container(
             margin: const EdgeInsets.only(bottom: 3),
             child: BigText(text: "." , color: Colors.black26,),
           ),
           SizedBox(
             width: Dimensions.width10,
           ),
           Container(
               margin: const EdgeInsets.only(bottom: 2),
               child: SmallText(text: "Food pairing"),
           ),
         ],
          ),
        ),
        // list of food and image
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context , index ) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width10 , right:Dimensions.width10, bottom: Dimensions.height10,
                ),
                child: Row(
                  children: [
                    //image section
                    Container(
                      width: Dimensions.listViewImgSize,
                      height: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius30),
                        color: Colors.white38,
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/food5.jpg',
                          ),
                          fit: BoxFit.cover
                        ),

                      ),

                    ),
                    //text container
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius30),
                            bottomRight: Radius.circular(Dimensions.radius30),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BigText(text: "Nutritious fruit meal in Egypt"),

                              SmallText(text: "with chinese characteristics"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  IconAndTextWidget(
                                    icon: Icons.circle_sharp,
                                    text: "Normal",
                                    iconColor: AppColors.iconColor1,
                                  ),
                                  IconAndTextWidget(
                                    icon: Icons.location_on,
                                    text: "1.7km",
                                    iconColor: AppColors.mainColor,
                                  ),
                                  IconAndTextWidget(
                                    icon: Icons.access_time,
                                    text: "32win",
                                    iconColor: AppColors.iconColor2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              );
            },

        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var currSale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currSale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currSale =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currSale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSale, 1);
      matrix = Matrix4.diagonal3Values(1, currSale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() - 1) {
      var currSale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currSale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSale, 1);
      matrix = Matrix4.diagonal3Values(1, currSale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currSale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currSale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food6.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.height15, right: Dimensions.height15),
                child: AppColumn(text: "Chinese Side",),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
