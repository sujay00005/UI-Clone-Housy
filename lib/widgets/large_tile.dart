import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeTile extends StatelessWidget {
  const LargeTile(
      {required this.color,
      required this.title,
      required this.hours,
      required this.percentage});

  final Color color;
  final String title;
  final String hours;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 200,
        width: 145,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(
                        value: percentage,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        strokeWidth: 10,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Positioned(
                      top: 30.0,
                      child: Text(
                        '$percentage %',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '$hours project',
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }
}
