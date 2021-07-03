import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import '../colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double v16 = width / 20;
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      // navigationBar: ,
      child: Container(
        width: width,
        height: height,
        child: Stack(children: <Widget>[
          Positioned.fill(
              child: Image.asset(
            'assets/images/bg02.png',
            fit: BoxFit.fill,
          )),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Login',
                    style: new TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = APP_PRIMARY),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  child: CupertinoTextField(
                    padding:
                        EdgeInsets.symmetric(vertical: v16, horizontal: v16),
                    style: TextStyle(color: APP_ACCENT),
                    placeholder: "username",
                    decoration: BoxDecoration(
                        color: Color(0xff131118),
                        borderRadius: BorderRadius.circular(8)),
                    placeholderStyle: TextStyle(color: APP_ACCENT),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  child: CupertinoTextField(
                    suffixMode: OverlayVisibilityMode.always,
                    obscureText: _obscure,
                    padding:
                        EdgeInsets.symmetric(vertical: v16, horizontal: v16),
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 8),
                        child: _obscure
                            ? Icon(EvaIcons.eye, size: 28, color: APP_ACCENT)
                            : Icon(EvaIcons.eye, size: 28, color: APP_ACCENT),
                      ),
                    ),
                    style: TextStyle(color: APP_ACCENT),
                    placeholder: "password",
                    decoration: BoxDecoration(
                        color: Color(0xff131118),
                        borderRadius: BorderRadius.circular(8)),
                    placeholderStyle: TextStyle(color: APP_ACCENT),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16, left: v16 * 2, right: v16 * 2),
                  padding:
                      EdgeInsets.symmetric(vertical: v16, horizontal: v16 * 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(v16 * 2),
                    color: Color(0xff1C1924),
                  ),
                  child: Center(
                      child: Text(
                    "Already a member?",
                    style: normalTextStyle.copyWith(
                        foreground: Paint()..shader = APP_PRIMARY),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: v16 * 1.5, left: v16 * 2, right: v16 * 2),
                  padding:
                      EdgeInsets.symmetric(vertical: v16, horizontal: v16 * 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(v16 * 2),
                    gradient: APP_PRIMARY_GRADIENT,
                  ),
                  child: Center(
                      child: Text(
                    "Create a new Wallet",
                    style: normalTextStyle.copyWith(color: REAL_WHITE),
                  )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
