import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

Widget buildStatusItem({
  required String title,
  required String time,
  required String location,
  required String date,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: smallFontSize, color: colorBlack),
          ),
          Text(
            time,
            style: TextStyle(fontSize: smallFontSize, color: colorBlack),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            location,
            style: TextStyle(fontSize: tinyFontSize, color: colorGrey),
          ),
          Text(
            date,
            style: TextStyle(fontSize: tinyFontSize, color: colorGrey),
          ),
        ],
      ),
    ],
  );
}
