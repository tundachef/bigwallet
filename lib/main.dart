import 'package:bigwallet/views/colors.dart';
import 'package:bigwallet/views/auth/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'BigWallet',
      theme: CupertinoThemeData(scaffoldBackgroundColor: REAL_BLACK),
      home: IntroPage(),
    );
  }
}
