import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

class PackageDetailsScreenBottomCard extends StatelessWidget {
  const PackageDetailsScreenBottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();

    return Card(
      color: scaffoldBackgroundColor,
      child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          strings.detailsStatus,
          style: TextStyle(fontSize: mediumFontSize),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: spacing,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.transit,
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
                Text(
                  '07.00',
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.locationText,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
                Text(
                  strings.deliveryStatusDate,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
              ],
            ),
            SizedBox(height: spacing,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.delivery,
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
                Text(
                  '19.30',
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.barracksUnder,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
                Text(
                  strings.deliveryStatusDate,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
              ],
            ),
            SizedBox(height: spacing,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.arriveAtSortingCenter,
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
                Text(
                  '11.30',
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.barracksUnder,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
                Text(
                  strings.deliveryStatusDate,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
              ],
            ),
            SizedBox(height: spacing,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.requestPickUp,
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
                Text(
                  '09.00',
                  style:
                  TextStyle(fontSize: smallFontSize, color: colorBlack),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  strings.barracksUnder,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
                Text(
                  strings.deliveryStatusDate,
                  style:
                  TextStyle(fontSize: tinyFontSize, color: colorGrey),
                ),
              ],
            ),
          ],
        )
      ],
            ),
          ),
    );
  }
}
