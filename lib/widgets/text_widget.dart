import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    Key? key,
    required this.label,
    this.fontSize=18,
    this.fontWeight,
    this.color
  }) : super(key: key);
  final String label;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight??FontWeight.w500,
        color: color??Colors.white,
      ),
    );
  }
}
