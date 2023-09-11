import 'package:flutter/material.dart';

class PaintModel {
  final int id;
  final String name;
  final double prices;
  final String Describtion;
  PaintModel({
    required this.id,
    required this.name,
    required this.prices,
    required this.Describtion,
  });
}

class StrokeText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color strokeColor;
  final double strokeWidth;

  const StrokeText({
    Key? key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 24.0, color: Colors.black),
    this.strokeColor = Colors.white,
    this.strokeWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: textStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}

// Usage example
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StrokeText(
          text: 'Products',
          textStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          strokeColor: Colors.black,
          strokeWidth: 2.0,
        ),
      ),
      body: Center(
        child: StrokeText(
          text: 'Hello Flutter',
          textStyle: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          strokeColor: Colors.black,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
