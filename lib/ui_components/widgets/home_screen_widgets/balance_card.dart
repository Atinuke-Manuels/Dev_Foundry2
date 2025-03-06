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
            Text(strings.yourBalance),
            SizedBox(height: smallSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: strings.balanceWholeNumber,
                      style: TextStyle(fontSize: extraLargeFontSize, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: strings.balanceDecimal, // Second part
                        style: TextStyle(color: colorGrey, fontSize: extraLargeFontSize, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ),
                IntrinsicWidth(  // Ensures the button only takes required space
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: smallBtnColor,
                      padding: EdgeInsets.symmetric(horizontal: 8), // Adjust for responsiveness
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Ensures it doesn't take extra space
                      children: [
                        Text(
                          strings.topUpBtn,
                          style: TextStyle(color: bottomTabActiveColor, fontSize: smallFontSize),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Icon(Icons.chevron_right, color: bottomTabActiveColor),
                      ],
                    ),
                  ),
                ),
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
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                  ),
                  onPressed: () {},
                  child: Row(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.view_in_ar, color: bottomTabActiveColor),
                      Text(
                        strings.newTrackBtnText,
                        style: TextStyle(color: colorBlack, fontSize: mediumFontSize),
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
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    ),
                    onPressed: () {},
                    child: Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.gite_rounded, color: bottomTabActiveColor),
                        Text(
                          strings.orderUsBtnText,
                          style: TextStyle(color: colorBlack, fontSize: mediumFontSize),
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




