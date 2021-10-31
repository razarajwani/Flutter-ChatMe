import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({@required this.txt, this.bgColor, this.txtColor, this.onPress});
  final txt, bgColor, txtColor, onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: bgColor,
        ),
        child: Text(
          txt,
          style: TextStyle(
            color: txtColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
