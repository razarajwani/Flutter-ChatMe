import 'package:flutter/material.dart';
import 'package:chatme/screens/login.dart';
import 'package:chatme/screens/register.dart';
import 'package:chatme/screens/chating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        Chatting.id: (context) => Chatting(),
      },
    );
  }
}
