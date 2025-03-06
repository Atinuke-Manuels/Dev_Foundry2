import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
import 'package:flutter/material.dart';

import 'package:dev_foundry_task/constants/constants.dart';
import '../../../constants/strings.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return Card(
      color: scaffoldBackgroundColor,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(strings.yourBalance, style: TextStyle(fontSize: smallFontSize),),
            SizedBox(height: smallSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: strings.balanceWholeNumber,
                      style: TextStyle(fontSize: extraLargeHeaderFontSize, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: strings.balanceDecimal, // Second part
                        style: TextStyle(color: colorGrey, fontSize: extraLargeHeaderFontSize, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ),
                SmallBtnWithIcon(strings: strings, title: strings.topUpBtn,),
              ],
            ),
            SizedBox(height: spacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: smallBtnColor,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  ),
                  onPressed: () {},
                  child: Row(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.view_in_ar, color: bottomTabActiveColor),
                      Text(
                        strings.newTrackBtnText,
                        style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],
                  ),
                ),
              ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: smallBtnColor,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    ),
                    onPressed: () {},
                    child: Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.gite_rounded, color: bottomTabActiveColor),
                        Text(
                          strings.orderUsBtnText,
                          style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                          overflow: TextOverflow.ellipsis,
                        ),

                      ],
                    ),
                  ),
                ),
            ],),
          ],
        ),
      ),
    );
  }
}






