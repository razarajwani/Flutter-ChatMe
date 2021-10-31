import 'package:flutter/material.dart';
import 'package:chatme/components/ScaffoldWidget.dart';
import 'package:chatme/components/TextFieldWidget.dart';
import 'package:chatme/components/ButtonWidget.dart';
import 'package:chatme/CustomStyles.dart';
import 'package:chatme/screens/register.dart';

class Chatting extends StatefulWidget {
  static String id = 'Chatting';

  @override
  State<Chatting> createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  String userEmail = '';
  String password = '';
  var txtUser = TextEditingController();
  var txtPwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: 'Chat Me',
      cardChild: Padding(
        padding: const EdgeInsets.all(20),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'raza',
                          style: CustomStyles.h4,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'Hello World',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFieldWidget(
                        hintText: 'Type your message here ...',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: ButtonWidget(
                        onPress: () {},
                        txt: 'Send',
                        bgColor: Colors.blue,
                        txtColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
