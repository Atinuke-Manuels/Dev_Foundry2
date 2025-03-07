import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

class PackageDetailsScreenMiddleCard extends StatelessWidget {
  const PackageDetailsScreenMiddleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: lowerCardColor,
      elevation: 3,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width:
                    screenWidth > 640 ? screenWidth * 0.35 : screenWidth * 0.3,
                child: Image.asset(
                  'assets/parcel.png',
                  scale: 0.4,
                )),
            SizedBox(
              width: screenWidth * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    strings.stayUpdatedText,
                    style: TextStyle(color: colorBlack, fontSize: tinyFontSize),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: spacing,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            liveTrackingBtnColor),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 14),
                        child: Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_searching_rounded,
                              color: colorBlack,
                              size: 20,
                            ),
                            Text(
                              strings.liveTrackingBtnText,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: colorBlack,
                                  fontSize: smallFontSize),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
