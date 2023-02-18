import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomTextWidget({required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: isSelected
              ? Color(0xff0131AF)
              : Color(0xff0131AF).withOpacity(.5),
          fontSize: 16,
          fontWeight: FontWeight.w700),
    );
  }
}
