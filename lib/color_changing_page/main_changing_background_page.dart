import 'package:flutter/material.dart';
import 'package:test_task/color_changing_page/main_changing_background_appbar.dart';
import 'package:test_task/color_changing_page/main_text.dart';
import 'package:test_task/color_changing_page/opacity_slider.dart';
import 'package:test_task/entities/custom_color_entity.dart';
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
  CustomColorEntity _colorEntity = CustomColorEntity();

  @override
  void initState() {
    super.initState();
    _colorEntity.generateAndSetRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainChangingBackgroundAppbar(),
      backgroundColor: _colorEntity.color,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _changeColorTapCallback(opacity: _colorEntity.opacity);
        },
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
                    _changeOpacityOfColorCallback(opacity: opacity ?? 1.0);
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
      _colorEntity = _colorEntity.copyWith(opacity: opacity);
    });
  }

  void _changeColorTapCallback({double opacity = 1}) {
    setState(() {
      _colorEntity.generateAndSetRandomColor(opacity: opacity);
    });
  }
}
