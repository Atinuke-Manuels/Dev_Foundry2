import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

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