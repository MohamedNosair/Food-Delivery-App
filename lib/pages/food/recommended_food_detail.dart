import 'package:delivery_app/utils/color.dart';
import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimensions.radius10,
                  ),
                  topRight: Radius.circular(
                    Dimensions.radius10,
                  ),
                ),),
                padding: EdgeInsets.only(
                  top: Dimensions.height5,
                  bottom: Dimensions.height10,
                ),
                child: Center(child: BigText(size:26 ,text: "chinese Side")),
                width: double.maxFinite,

              ),
            ),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.pexels.com/photos/6975534/pexels-photo-6975534.jpeg?auto=compress&cs=tinysrgb&w=600",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SmallText(
                height: 1.8,
                color: AppColors.paraColor,
                text:
                    "Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing applicationGoogle Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS.. They cover a wide range of topics such as Android Wear, Google Compute Engine, ARCore, and Google APIs on iOS."),
          ),
        ],
      ),
    );
  }
}
