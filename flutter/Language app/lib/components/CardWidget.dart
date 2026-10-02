import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key,
    required this.text,
    required this.color,
    required this.ontap,
  });
  String? text;
  Color? color;
  VoidCallback? ontap;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 65,
        width: double.infinity,
        color: color,
        padding: EdgeInsets.only(left: 12, top: 6),
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
