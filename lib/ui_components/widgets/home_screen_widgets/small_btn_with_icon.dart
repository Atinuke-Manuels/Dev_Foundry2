import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/strings.dart';

class SmallBtnWithIcon extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const SmallBtnWithIcon({
    super.key,
    required this.strings,
    required this.title,
    this.onTap,
  });

  final AppStrings strings;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(  // Ensures the button only takes required space
      child: SizedBox(
        height: 25,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: smallBtnColor,
            padding: EdgeInsets.symmetric(horizontal: 8), // Adjust for responsiveness
          ),
          onPressed: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(color: bottomTabActiveColor, fontSize: tinyFontSize),
                overflow: TextOverflow.ellipsis,
              ),
              Icon(Icons.chevron_right, color: bottomTabActiveColor),
            ],
          ),
        ),
      ),
    );
  }
}