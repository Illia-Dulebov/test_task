import 'package:flutter/material.dart';
import 'package:test_task/color_changing_page/main_changing_background_appbar.dart';
import 'package:test_task/color_changing_page/main_text.dart';
import 'package:test_task/color_changing_page/opacity_slider.dart';
import 'package:test_task/utility/random_color_generator.dart';
import 'package:test_task/utility/sized_spacer.dart';

/// Main page for the task
class MainChangingBackgroundPage extends StatefulWidget {
  /// Main page constructor
  const MainChangingBackgroundPage({super.key});

  @override
  State<MainChangingBackgroundPage> createState() =>
      _MainChangingBackgroundPageState();
}

class _MainChangingBackgroundPageState
    extends State<MainChangingBackgroundPage> {
  Color _backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _backgroundColor = generateRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainChangingBackgroundAppbar(),
      backgroundColor: _backgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _changeColorTapCallback,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const SizedSpacer(),
                const MainText(text: "Hello there"),
                OpacitySlider(
                  onSliderOpacityValueColorChange: (opacity) {
                    _changeOpacityOfColorCallback(opacity: opacity ?? 0);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _changeOpacityOfColorCallback({double opacity = 1}) {
    setState(() {
      _backgroundColor = _backgroundColor.withValues(alpha: opacity);
    });
  }

  void _changeColorTapCallback({double opacity = 1}) {
    setState(() {
      _backgroundColor = generateRandomColor(opacity: opacity);
    });
  }
}
