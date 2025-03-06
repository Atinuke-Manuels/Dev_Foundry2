import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CurrentTrackingWidget extends StatelessWidget {
  const CurrentTrackingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(strings.currentTrackingText,
          style: TextStyle(fontSize: largeFontSize),),
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
                  strings.seeAllText,
                  style: TextStyle(color: bottomTabActiveColor, fontSize: smallFontSize),
                  overflow: TextOverflow.ellipsis,
                ),
                Icon(Icons.chevron_right, color: bottomTabActiveColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
