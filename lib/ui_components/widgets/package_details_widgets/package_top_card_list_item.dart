import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class PackageTopCardListItem extends StatelessWidget {
  final String leadingTitle;
  final String leadingSubTitle;
  final String leadingSubTitle2;
  final String trailingTitle;
  final String trailingSubTitle;
  final String trailingSubTitle2;

  const PackageTopCardListItem({
    super.key,
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
      padding: const EdgeInsets.only(
        left: 20,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Leading section (left side)
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leadingTitle,
                  style: TextStyle(color: colorGrey, fontSize: tinyFontSize),
                  overflow: TextOverflow.ellipsis,
                ),
                Text.rich(
                  TextSpan(
                      text: leadingSubTitle,
                      style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                      children: [
                        TextSpan(
                          text: leadingSubTitle2,
                          style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                        )
                      ]
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // Spacer in the middle
          SizedBox(width: 16),

          // Trailing section (right side)
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trailingTitle,
                  style: TextStyle(color: colorGrey, fontSize: tinyFontSize),
                  overflow: TextOverflow.ellipsis,
                ),
                Text.rich(
                  TextSpan(
                      text: trailingSubTitle,
                      style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                      children: [
                        TextSpan(
                          text: trailingSubTitle2,
                          style: TextStyle(color: colorBlack, fontSize: smallFontSize),
                        )
                      ]
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}