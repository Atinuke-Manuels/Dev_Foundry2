import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double dashWidth;
  final double dashHeight;
  final double dashSpacing;

  const DashedDivider({
    Key? key,
    this.color = Colors.grey,
    this.dashWidth = 5,
    this.dashHeight = 2,
    this.dashSpacing = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dashHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dashCount = (constraints.maxWidth / (dashWidth + dashSpacing)).floor();
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(dashCount, (index) {
              return Container(
                width: dashWidth,
                height: dashHeight,
                color: color,
                margin: EdgeInsets.only(right: dashSpacing),
              );
            }),
          );
        },
      ),
    );
  }
}
