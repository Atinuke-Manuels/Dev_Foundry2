import 'package:dev_foundry_task/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../constants/strings.dart';

import '../widgets/package_details_widgets/package_details_app_bar.dart';
import '../widgets/package_details_widgets/package_details_screen_bottom_card.dart';
import '../widgets/package_details_widgets/package_details_screen_middle_card.dart';
import '../widgets/package_details_widgets/package_details_top_card.dart';

class PackageDetailsScreen extends StatelessWidget {
  const PackageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);

    return Scaffold(
      appBar: PackageDetailsAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: ListView(
          children: [
            // SizedBox(height: spacing),
            PackageDetailsTopCard(),
            SizedBox(
              height: bigSpacing,
            ),
            PackageDetailsScreenMiddleCard(),
            SizedBox(
              height: spacing,
            ),
            PackageDetailsScreenBottomCard()
          ],
        ),
      ),
    );
  }
}
