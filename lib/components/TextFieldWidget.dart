import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {this.label,
      this.hintText,
      this.suffix,
      this.IsPassword,
      this.onChanged,
      this.controller});
  final label, hintText, suffix, IsPassword, onChanged, controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: IsPassword != null ? IsPassword : false,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        prefix: label == null ? null : Text(label),
        hintText: hintText,
        suffix: suffix,
      ),
    );
  }
}
