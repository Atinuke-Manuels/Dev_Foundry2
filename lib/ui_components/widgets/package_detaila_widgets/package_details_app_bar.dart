import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';


class PackageDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PackageDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();

    return AppBar(
      backgroundColor: scaffoldBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
        child: CircleAvatar(
            backgroundColor: lowerCardColor,
            child: Icon(
              Icons.chevron_left,
              size: 30,
              color: colorBlack,
            )),
      ),
      title: Text(
        strings.packageDetailsAppBarTitle,
        style:
        TextStyle(fontSize: extraLargeFontSize, fontWeight: FontWeight.normal),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: CircleAvatar(
              backgroundColor: lowerCardColor,
              child:
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))),
        )
      ],
    );
  }

  @override
  /// this helps to get the preferred app bar height
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
