import 'package:bigwallet/views/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double v16 = width / 20;
    double height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
        // navigationBar: ,
        child: Container(
      width: width,
      height: height,
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                "Introduce yourself",
                style: TextStyle(color: REAL_WHITE, fontSize: v16),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Lets start by getting to know you better and continue register",
                textAlign: TextAlign.center,
                style: TextStyle(color: APP_ACCENT, fontSize: v16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
            child: CupertinoTextField(
              padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16),
              style: TextStyle(color: Color(0xffA6A0BB)),
              placeholder: "Full name",
              decoration: BoxDecoration(
                  color: Color(0xff131118),
                  borderRadius: BorderRadius.circular(8)),
              placeholderStyle: TextStyle(color: Color(0xffA6A0BB)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
            child: CupertinoTextField(
              padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16),
              style: TextStyle(color: Color(0xffA6A0BB)),
              placeholder: "Middle name",
              decoration: BoxDecoration(
                  color: Color(0xff131118),
                  borderRadius: BorderRadius.circular(8)),
              placeholderStyle: TextStyle(color: Color(0xffA6A0BB)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
            child: CupertinoTextField(
              padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16),
              style: TextStyle(color: Color(0xffA6A0BB)),
              placeholder: "Last Name",
              decoration: BoxDecoration(
                  color: Color(0xff131118),
                  borderRadius: BorderRadius.circular(8)),
              placeholderStyle: TextStyle(color: Color(0xffA6A0BB)),
            ),
          ),
        ],
      ),
    ));
  }
}
