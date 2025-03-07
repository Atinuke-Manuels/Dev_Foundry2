import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/strings.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return AppBar(
      backgroundColor: scaffoldBackgroundColor,
      // backgroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
        child: CircleAvatar(child: Image.asset('assets/profile.png')),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              strings.homeAppBarText,
              style: TextStyle(
                  fontSize: headerFontSize, fontWeight: FontWeight.normal),
            ),
            Row(
              spacing: 10,
              children: [
                Text(
                  strings.homeAppBarSubText,
                  style: TextStyle(
                      fontSize: tinyFontSize,
                      fontWeight: FontWeight.bold,
                      color: colorGrey),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: CircleAvatar(
            backgroundColor: lowerCardColor,
            child: Icon(Icons.notifications_none_outlined),
          ),
        ),
      ],
    );
  }

  @override

  /// this helps to get the preferred app bar height
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
