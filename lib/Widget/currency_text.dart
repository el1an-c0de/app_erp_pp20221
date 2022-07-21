import 'package:flutter/material.dart';

class CurrencyText extends StatelessWidget {
  final String subtitle;
  final double fontSize;
  const CurrencyText({
    Key? key,
    this.fontSize = 15,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "PANEL DE ADMINISTRACIÓN DE ",
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.black,
          fontWeight: FontWeight.w100,
          fontFamily: 'DejaVuSans',
        ),
        children: [
          TextSpan(
            text: subtitle,
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: FontWeight.w100,
                fontFamily: 'DejaVuSans'),
          ),
        ],
      ),
    );
  }
}
