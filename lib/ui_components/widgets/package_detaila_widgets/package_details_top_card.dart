import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/round_orange_clickable_icon.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class PackageDetailsTopCard extends StatelessWidget {
  const PackageDetailsTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
        child: Column(
          children: [
            ListTile(
              leading: RoundOrangeClickableIcon(icon: Icons.card_giftcard),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(strings.idNumberText, style: TextStyle(fontSize: smallFontSize),overflow: TextOverflow.ellipsis,),
                  Text(strings.idNumber, style: TextStyle(fontSize: extraLargeFontSize),overflow: TextOverflow.ellipsis),
                ],
              ),
              // trailing: Row(
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     // SmallBtnWithIcon(strings: strings, title: 'In transit', textColor: inTransitBtnTextColor, btnColor: inTransitBtnBackgroundColor,icon: Icons.add,),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}
