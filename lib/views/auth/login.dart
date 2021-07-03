import 'package:bigwallet/views/widgets/buttons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import '../colors.dart';
import '../colors.dart';
import '../index.dart';

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
                  margin: EdgeInsets.only(
                      top: v16 * 1.5, left: v16, right: v16, bottom: v16 / 2),
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
                            ? Icon(EvaIcons.eyeOutline,
                                size: 28, color: APP_ACCENT)
                            : Icon(EvaIcons.eyeOffOutline,
                                size: 28, color: APP_ACCENT),
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
                PrimaryButton(context,
                    v16: v16,
                    onTap: () => Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Index())),
                    text: "Continue"),
                AccentButton(context,
                    v16: v16,
                    text: "Continue via LinkedIn",
                    onTap: null,
                    hasIcon: true,
                    icon: Image.asset('assets/images/linkedin.png')),
                ShaderMask(
                  shaderCallback: (bounds) => APP_PRIMARY,
                  child: Container(
                      margin: EdgeInsets.only(top: v16),
                      child: Text("Forgot Password?",
                          style: TextStyle(
                            foreground: Paint()..shader = APP_PRIMARY,
                            decoration: TextDecoration.underline,
                            // decorationColor:
                          ))),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
