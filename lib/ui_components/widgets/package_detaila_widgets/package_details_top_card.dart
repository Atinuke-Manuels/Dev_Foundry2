import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/round_orange_clickable_icon.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
import 'package:dev_foundry_task/ui_components/widgets/package_detaila_widgets/package_top_card_list_item.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../data/package_top_card_list_item_data.dart';
import 'dashed_divider.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        strings.idNumberText,
                        style: TextStyle(fontSize: smallFontSize),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SmallBtnWithIcon(
                          strings: strings,
                          title: 'In transit',
                          textColor: inTransitBtnTextColor,
                          btnColor: inTransitBtnBackgroundColor),
                    ],
                  ),
                  Text(strings.idNumber,
                      style: TextStyle(fontSize: extraLargeFontSize),
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 30, top: 12, bottom: 24),
              child: DashedDivider(color: colorGrey),
            ),
      Column(
        children: packageDetails.map((details) {
          return PackageTopCardListItem(
            leadingTitle: details['leadingTitle'] ?? '',
            leadingSubTitle: details['leadingSubTitle'] ?? '',
            leadingSubTitle2: details['leadingSubTitle2'] ?? '',
            trailingTitle: details['trailingTitle'] ?? '',
            trailingSubTitle: details['trailingSubTitle'] ?? '',
            trailingSubTitle2: details['trailingSubTitle2'] ?? '',
          );
        }).toList(),
      )
          ],
        ),
      ),
    );
  }
}


