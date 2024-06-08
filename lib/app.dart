import 'package:flutter/material.dart';

import 'core/themes/theme.dart';
import 'feature/home/presentation/pages/bottom_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightMode,
      home: const BottomPage(),
    );
  }
}
