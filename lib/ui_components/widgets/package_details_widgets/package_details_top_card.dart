import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/round_orange_clickable_icon.dart';import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
import 'package:dev_foundry_task/ui_components/widgets/package_details_widgets/package_top_card_list_item.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../model/package_top_card_list_item_data.dart';
import 'dashed_divider.dart';

class PackageDetailsTopCard extends StatelessWidget {
  const PackageDetailsTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();
    // Define spacing between list items
    final double itemSpacing = 16.0;

    return Card(
      color: scaffoldBackgroundColor,
      elevation: 3,
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
                        style: TextStyle(
                            fontSize: smallFontSize, color: colorGrey),
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
              padding: const EdgeInsets.only(
                  left: 26, right: 30, top: 12, bottom: 24),
              child: DashedDivider(color: colorGrey),
            ),
            Column(
              children: [
                for (int i = 0; i < packageDetails.length; i++) ...[
                  PackageTopCardListItem(
                    leadingTitle: packageDetails[i]['leadingTitle'] ?? '',
                    leadingSubTitle: packageDetails[i]['leadingSubTitle'] ?? '',
                    leadingSubTitle2: packageDetails[i]['leadingSubTitle2'] ?? '',
                    trailingTitle: packageDetails[i]['trailingTitle'] ?? '',
                    trailingSubTitle: packageDetails[i]['trailingSubTitle'] ?? '',
                    trailingSubTitle2: packageDetails[i]['trailingSubTitle2'] ?? '',
                  ),
                  if (i < packageDetails.length - 1)
                    SizedBox(height: itemSpacing),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}