import 'package:animate_do/animate_do.dart';
import 'package:bigwallet/views/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Index extends StatefulWidget {
  const Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  bool _drawerOpened = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double v16 = width / 20;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          child: ListView(
            padding: EdgeInsets.only(top: 48),
            children: <Widget>[
              //
              Container(
                padding: EdgeInsets.symmetric(horizontal: v16 * 1.5),
                decoration: BoxDecoration(color: REAL_BLACK),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              _drawerOpened = true;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/drawer_open.png",
                              width: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/bell.png",
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /*
         *  SHOULD BE THE LAST IN THE STACK  
         * 
         */
        _drawerOpened
            ? FadeInLeft(
                duration: Duration(milliseconds: 200),
                child: CustomDrawer(
                  v16: v16,
                  width: width,
                  height: height,
                  callback: () {
                    setState(() {
                      _drawerOpened = false;
                    });
                  },
                ),
              )
            : FadeOutLeft(
                duration: Duration(milliseconds: 200), child: Container()),
      ],
    ));
  }
}
