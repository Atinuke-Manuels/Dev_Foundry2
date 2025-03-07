import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/constants/strings.dart';
import 'package:dev_foundry_task/ui_components/widgets/package_detaila_widgets/package_status_items.dart';
import 'package:flutter/material.dart';

import '../../../data/package_status_items.dart';

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
                for (final item in deliveryStatusItems) ...[
                  buildStatusItem(
                    title: item['title'] as String,
                    time: item['time'] as String,
                    location: item['location'] as String,
                    date: item['date'] as String,
                  ),
                  if (item != deliveryStatusItems.last)
                    SizedBox(height: spacing),
                ]
              ],
            )
          ],
        ),
      ),
    );
  }
}
