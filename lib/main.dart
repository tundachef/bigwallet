import 'package:bigwallet/views/colors.dart';
import 'package:bigwallet/views/auth/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/auth/login.dart';
import 'views/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BigWallet',
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      theme: ThemeData(scaffoldBackgroundColor: REAL_BLACK),
      home: Index(),
    );
  }
}

// VIP CLASS DON'T TAMPER!!!!!
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
