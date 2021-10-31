import 'package:flutter/material.dart';
import 'package:chatme/components/ScaffoldWidget.dart';
import 'package:chatme/components/TextFieldWidget.dart';
import 'package:chatme/components/ButtonWidget.dart';
import 'package:chatme/CustomStyles.dart';
import 'package:chatme/screens/chating.dart';
import 'package:chatme/screens/register.dart';

class Login extends StatefulWidget {
  static String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userEmail = '';
  String password = '';
  var txtUser = TextEditingController();
  var txtPwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      cardChild: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Image(
                image: NetworkImage(
                    'https://opera.cba.edu.sa/OnlineAdmissionSys/Content/images/logo.jpg'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'LOGIN',
              style: CustomStyles.h2,
            ),
            TextFieldWidget(
              controller: txtUser,
              hintText: 'User Email ',
              suffix: Icon(
                Icons.email,
                color: Colors.black45,
              ),
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
            ),
            TextFieldWidget(
              controller: txtPwd,
              hintText: 'Password',
              suffix: Icon(
                Icons.vpn_key,
                color: Colors.black45,
              ),
              IsPassword: true,
              onChanged: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 15,
            ),
            ButtonWidget(
              txt: 'Sign In',
              bgColor: Colors.blue,
              txtColor: Colors.white,
              onPress: () {
                Navigator.pushNamed(context, Chatting.id);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              txt: 'Don\'t have an account? Sign Up',
              bgColor: Colors.black12,
              txtColor: Colors.black45,
              onPress: () {
                Navigator.pushNamed(context, Register.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
