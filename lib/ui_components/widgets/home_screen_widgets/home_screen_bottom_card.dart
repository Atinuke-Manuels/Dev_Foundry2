import 'package:dev_foundry_task/ui_components/widgets/home_screen_widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import 'home_screen_bottom_tab_view.dart';

class HomeScreenBottomCard extends StatelessWidget {
  const HomeScreenBottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: lowerCardColor,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomSearchBar(),
            SizedBox(
              height: bigSpacing,
            ),
            HomeScreenBottomTabView(),
          ],
        ),
      ),
    );
  }
}
