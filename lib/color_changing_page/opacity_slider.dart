import 'package:flutter/material.dart';
import 'package:test_task/color_changing_page/main_text.dart';

/// Opacity value slider
class OpacitySlider extends StatefulWidget {
  ///Callback for the color change with the certain opacity
  final Function(double?) onSliderOpacityValueColorChange;

  /// Opacity slider constructor
  const OpacitySlider({
    required this.onSliderOpacityValueColorChange,
    super.key,
  });

  @override
  State<OpacitySlider> createState() => _OpacitySliderState();
}

class _OpacitySliderState extends State<OpacitySlider> {
  double _currentSliderValue = 1.0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onSliderOpacityValueColorChange(_currentSliderValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        const MainText(text: "Opacity Slider"),
        Slider(
          value: _currentSliderValue,
          onChanged: (value) {
            widget.onSliderOpacityValueColorChange(value);
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
