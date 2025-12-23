import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/bar_element.dart';
import 'text_style.dart';

class BarStack extends StatelessWidget {
  final Function(int) onIndexChanged;

  const BarStack({super.key, required this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BarElement(
          name: 'Home',
          icon: const Icon(Icons.home),
          textStyle: textStyle,
          callback: () => onIndexChanged(0),
        ),
        BarElement(
          name: 'Play',
          icon: const Icon(Icons.play_circle_fill),
          textStyle: textStyle,
          callback: () => onIndexChanged(1),
        ),
        BarElement(
          name: 'Add',
          icon: const Icon(Icons.add),
          textStyle: textStyle,
          callback: () => onIndexChanged(2),
        ),
        BarElement(
          name: 'Subscriptions',
          icon: const Icon(Icons.subscriptions),
          textStyle: textStyle,
          callback: () => onIndexChanged(3),
        ),
        BarElement(
          name: 'Shorts',
          icon: const Icon(Icons.video_call),
          textStyle: textStyle,
          callback: () => onIndexChanged(4),
        ),
      ],
    );
  }
}
