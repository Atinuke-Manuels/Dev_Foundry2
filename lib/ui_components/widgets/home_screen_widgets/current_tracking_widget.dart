import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
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
        Text(
          strings.currentTrackingText,
          style: TextStyle(fontSize: headerFontSize),
        ),
        SmallBtnWithIcon(
          strings: strings,
          title: strings.seeAllText,
          icon: Icons.chevron_right,
        ),
      ],
    );
  }
}
