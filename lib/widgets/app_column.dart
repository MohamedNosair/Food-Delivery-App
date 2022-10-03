import 'package:delivery_app/utils/color.dart';
import 'package:delivery_app/utils/dimensions.dart';
import 'package:delivery_app/widgets/big_text.dart';
import 'package:delivery_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text ;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: 20,),
        SizedBox(
          height: Dimensions.height5,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                5,
                    (index) => const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1237"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
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
    );
  }
}
