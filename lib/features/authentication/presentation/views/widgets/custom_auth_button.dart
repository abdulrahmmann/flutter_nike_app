
import 'package:flutter/material.dart';

class CustomAuthenticationButton extends StatelessWidget {
  const CustomAuthenticationButton(
      {super.key,
        required this.text,
        required this.textColor,
        required this.backgroundColor});

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway'
          ),
        )
    );
  }
}