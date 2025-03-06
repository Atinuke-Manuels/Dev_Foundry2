import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class RoundOrangeClickableIcon extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;

  const RoundOrangeClickableIcon({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bottomTabActiveColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: scaffoldBackgroundColor,
          size: 18,
        ),
      ),
    );
  }
}