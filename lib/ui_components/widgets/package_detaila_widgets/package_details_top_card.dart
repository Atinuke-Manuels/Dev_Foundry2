import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/round_orange_clickable_icon.dart';
import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/small_btn_with_icon.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
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
            PackageTopCardListItem(
              leadingTitle: strings.from,
              leadingSubTitle: strings.locationText,
              leadingSubTitle2: ', 93821',
              trailingTitle: strings.to,
              trailingSubTitle: strings.locationSubText,
              trailingSubTitle2: ', 39292',
            ),
            PackageTopCardListItem(
              leadingTitle: strings.shipperName,
              leadingSubTitle: 'Ajadi Taiwo',
              leadingSubTitle2: ' Taiwo',
              trailingTitle: strings.recipientName,
              trailingSubTitle: strings.homeAppBarText,
              trailingSubTitle2: '',
            ),
            PackageTopCardListItem(
              leadingTitle: strings.deliveryType,
              leadingSubTitle: strings.regular,
              leadingSubTitle2: '',
              trailingTitle: strings.weight,
              trailingSubTitle: '2.4kg',
              trailingSubTitle2: '                  ',
            ),
          ],
        ),
      ),
    );
  }
}

class PackageTopCardListItem extends StatelessWidget {
  final String leadingTitle;
  final String leadingSubTitle;
  final String leadingSubTitle2;
  final String trailingTitle;
  final String trailingSubTitle;
  final String trailingSubTitle2;

  const PackageTopCardListItem(
      {super.key,
      required this.leadingTitle,
      required this.leadingSubTitle,
        required this.leadingSubTitle2,
      required this.trailingTitle,
      required this.trailingSubTitle,
        required this.trailingSubTitle2,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40,),
      child: ListTile(
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leadingTitle,
              style: TextStyle(color: greyTextColor, fontSize: tinyFontSize),
              overflow: TextOverflow.ellipsis,
            ),
            Text.rich(TextSpan(
              text: leadingSubTitle,
              style: TextStyle(color: colorBlack, fontSize: smallFontSize),
              children: [TextSpan(
                text: leadingSubTitle2,
            style: TextStyle(color: colorBlack, fontSize: smallFontSize),
              )]
            ), maxLines: 1, // Limits text to 1 line
              overflow: TextOverflow.ellipsis,),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trailingTitle,
              style: TextStyle(color: greyTextColor, fontSize: tinyFontSize),
              overflow: TextOverflow.ellipsis,
            ),
            Text.rich(
                TextSpan(
                text: trailingSubTitle,
                style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                children: [TextSpan(
                  text: trailingSubTitle2,
                  style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                )]
            ), maxLines: 1, // Limits text to 1 line
              overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}
