import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/utils/responsive_helper.dart';
import 'package:flutter/material.dart';

import '../../constants/strings.dart';
import '../widgets/home_screen_widgets/balance_card.dart';
import '../widgets/home_screen_widgets/current_tracking_widget.dart';
import '../widgets/home_screen_widgets/home_app_bar.dart';
import '../widgets/home_screen_widgets/home_screen_bottom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final responsive = ResponsiveHelper(designWidth: 386, designHeight: 554);
    // final strings = AppStrings.of(context);

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: ListView(
          children: [
            // SizedBox(height: spacing),
            BalanceCard(),
            SizedBox(height: bigSpacing),
            CurrentTrackingWidget(),
            SizedBox(height: spacing),
            HomeScreenBottomCard(), // No need for Expanded
          ],
        ),
      ),
    );
  }
}
