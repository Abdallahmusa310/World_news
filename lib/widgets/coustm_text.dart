import 'package:flutter/material.dart';

class CoustmText extends StatelessWidget {
  const CoustmText({super.key, required this.text, this.fontsize, this.color});
  final String text;
  final double? fontsize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
          fontFamily: 'FjallaOne'),
    );
  }
}
