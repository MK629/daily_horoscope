import 'package:daily_horoscope/widgets/common_ui.dart';
import 'package:flutter/material.dart';

class ScrollableText extends StatelessWidget {
  final String text;

  const ScrollableText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: commonBoxDecoration(),
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}