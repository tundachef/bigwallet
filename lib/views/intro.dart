import 'package:bigwallet/views/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
      child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Image.asset(
            'assets/images/bg01.png',
            fit: BoxFit.fill,
          )),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Welcome to \n BigWallet',
                    style: new TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = APP_PRIMARY),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: v16 * 1.5, left: v16 * 2, right: v16 * 2),
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
        ],
      ),
    ));
  }
}
