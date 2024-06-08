import 'package:flutter/material.dart';

import 'app_pallete.dart';

class AppTheme {
  static final lightMode = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: const ColorScheme.light(
      primary: AppPallete.kPrimary,
      secondary: AppPallete.kSecondary,
      surface: AppPallete.kSecondary,
    ),
    scaffoldBackgroundColor: AppPallete.kSecondary,
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(AppPallete.kSecondary),
      side: BorderSide.none,
    ),
  );
}
