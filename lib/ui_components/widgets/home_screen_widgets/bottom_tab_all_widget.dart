import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

class BottomTabAllWidget extends StatelessWidget {
  const BottomTabAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();

    return Column(
      children: [
        BottomTabListItem(strings: strings),
        SizedBox(
          height: smallSpacing,
        ),
        BottomTabListItem(strings: strings),
      ],
    );
  }
}

class BottomTabListItem extends StatelessWidget {
  const BottomTabListItem({
    super.key,
    required this.strings,
  });

  final AppStrings strings;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: scaffoldBackgroundColor,
          child: Icon(
            Icons.fire_truck_outlined,
            size: 20,
            color: colorBlack,
          )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            strings.idNumberText,
            style: TextStyle(fontSize: smallFontSize),
            overflow: TextOverflow.ellipsis,
          ),
          Text(strings.idNumber,
              style: TextStyle(fontSize: extraLargeFontSize),
              overflow: TextOverflow.ellipsis),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 14,
              ),
              Text(
                strings.locationText,
                style: TextStyle(fontSize: tinyFontSize),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward,
                size: 16,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.location_on_outlined,
                size: 14,
              ),
              Text(
                strings.locationSubText,
                style: TextStyle(fontSize: tinyFontSize),
              ),
            ],
          ),
        ],
      ),
      trailing: CircleAvatar(
          backgroundColor: scaffoldBackgroundColor,
          child: Icon(
            Icons.chevron_right,
            size: 30,
            color: colorBlack,
          )),
    );
  }
}
