import 'package:flutter/material.dart';

/// Main entry point for the app
class MainChangingBackgroundAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  /// Main page appbar constructor
  const MainChangingBackgroundAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(
        "Page with changing background",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
