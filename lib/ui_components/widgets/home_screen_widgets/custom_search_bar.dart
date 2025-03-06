import 'package:dev_foundry_task/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings();

    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: scaffoldBackgroundColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          hintText: strings.searchText,
          hintStyle: TextStyle(color: colorGrey),
          prefixIcon: const Icon(Icons.search, size: 21, color: greyTextColor,),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 6), // Adjust the right padding as needed
          child: GestureDetector(
            onTap: () => {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: bottomTabActiveColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.swap_horiz,
                color: scaffoldBackgroundColor,
                size: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
