import 'package:chatme/screens/login.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  ScaffoldWidget({this.title, this.cardChild});
  final title, cardChild;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: title == null
            ? null
            : AppBar(
                title: Text(title),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Login.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.logout,
                      ),
                    ),
                  )
                ],
              ),
        body: Center(
          child: cardChild,
        ),
      ),
    );
  }
}
