import 'package:flutter/material.dart';

import '../sizes/size_config.dart';
import '../themes/app_pallete.dart';

double animatedConditionLeftValue(int index) {
  switch (index) {
    case 0:
      return AppSizes.blockedSizeHorizontal * 5.5;
    case 1:
      return AppSizes.blockedSizeHorizontal * 22.5;
    case 2:
      return AppSizes.blockedSizeHorizontal * 39.5;
    case 3:
      return AppSizes.blockedSizeHorizontal * 56.5;
    case 4:
      return AppSizes.blockedSizeHorizontal * 73.5;

    default:
      return 0;
  }
}

// Gradient Bottom Indicator Colors list
var gradient = [
  AppPallete.kSecondary.withOpacity(0.5),
  AppPallete.kSecondary.withOpacity(0.8),
  AppPallete.kTransparent,
];

// Chip tab list
List<String> chipLists = [
  'EduMed',
  'Parent Child Care',
  'Period',
  'Child Birth'
];

// Constants app padding
var kPadding = EdgeInsets.symmetric(
  horizontal: AppSizes.blockedSizeHorizontal * 4.5,
);
