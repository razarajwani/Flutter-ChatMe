import 'package:flutter/material.dart';

class CustomStyles {
  static TextStyle txtStyle = TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w500,
    fontFamily: 'Calibri',
  );
  static TextStyle h1 = txtStyle.copyWith(fontSize: 30.00);
  static TextStyle h2 = txtStyle.copyWith(fontSize: 25.00);
  static TextStyle h3 = txtStyle.copyWith(fontSize: 20.00);
  static TextStyle h4 = txtStyle.copyWith(fontSize: 15.00);
  static TextStyle h5 = txtStyle.copyWith(fontSize: 12.00);
  static TextStyle h6 = txtStyle.copyWith(fontSize: 10.00);
}
