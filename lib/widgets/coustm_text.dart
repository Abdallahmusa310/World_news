import 'package:flutter/material.dart';

class CoustmText extends StatelessWidget {
  const CoustmText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: 'FjallaOne'),
    );
  }
}
