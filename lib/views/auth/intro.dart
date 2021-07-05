import 'package:bigwallet/views/auth/login.dart';
import 'package:bigwallet/views/auth/register.dart';
import 'package:bigwallet/views/colors.dart';
import 'package:bigwallet/views/widgets/buttons.dart';
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
    return Scaffold(
      body: CupertinoPageScaffold(
          // navigationBar: ,
          resizeToAvoidBottomInset: false,
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
                      AccentButton(context,
                          v16: v16,
                          text: "Already a member?",
                          onTap: () => Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => LoginPage()))),
                      PrimaryButton(context,
                          v16: v16,
                          onTap: () => Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => RegisterPage())),
                          text: "Create a new Wallet"),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
