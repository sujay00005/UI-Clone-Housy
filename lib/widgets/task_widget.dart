import 'package:flutter/material.dart';
import 'package:ui_housy/widgets/RoundIconButton.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    required this.title,
    required this.color,
    required this.icon,
    required this.nowTask,
    required this.started,
    required this.function,
  });

  final String title;
  final Color color;
  final IconData icon;
  final String nowTask;
  final String started;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundIconButton(
          icon: icon,
          color: color,
          onPressed: () => function,
        ),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              '$nowTask tasks now. $started started',
              style: TextStyle(color: Colors.black38, fontSize: 10),
            ),
          ],
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
