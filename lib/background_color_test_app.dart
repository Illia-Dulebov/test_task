import 'package:flutter/material.dart';
import 'package:test_task/color_changing_page/main_changing_background_page.dart';

/// Main entry point for the app
class BackgroundColorTestApp extends StatelessWidget {
  /// Test App constructor
  const BackgroundColorTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test background color changing App',
      debugShowCheckedModeBanner: false,
      home: MainChangingBackgroundPage(),
    );
  }
}
