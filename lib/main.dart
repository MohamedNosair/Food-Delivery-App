import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/food/popular_food_details.dart';
import 'pages/food/recommended_food_detail.dart';
import 'pages/home/main_food _page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecommendedFoodDetail(),
    );
  }
}
