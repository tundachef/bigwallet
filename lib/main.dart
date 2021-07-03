import 'package:bigwallet/views/intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'BigWallet',
      home: LoginPage(),
    );
  }
}
