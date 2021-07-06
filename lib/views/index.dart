import 'package:animate_do/animate_do.dart';
import 'package:bigwallet/views/colors.dart';
import 'package:bigwallet/views/widgets/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Index extends StatefulWidget {
  const Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  bool _drawerOpened = false;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double v16 = width / 20;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: REAL_BLACK,
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
                        Container(
                          margin: EdgeInsets.only(top: v16 * 1.8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text("Good day, Steve",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffC0C0C0))),
                              ),
                              Container(
                                child: Text("£ 1917.53",
                                    style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w800,
                                        color: REAL_WHITE)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: v16 * 1.2, bottom: v16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              GestureDetector(
                                // onTap: onTap,
                                child: Container(
                                  margin: EdgeInsets.only(right: v16),
                                  padding: EdgeInsets.symmetric(
                                      vertical: v16 * 0.6,
                                      horizontal: v16 * 1.4),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(v16 * 2),
                                    gradient: APP_PRIMARY_GRADIENT,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Top up",
                                    style: normalTextStyle.copyWith(
                                        color: REAL_WHITE),
                                  )),
                                ),
                              ),
                              GestureDetector(
                                // onTap: onTap,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: v16 * 0.6,
                                      horizontal: v16 * 1.4),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(v16 * 2),
                                    gradient: APP_PRIMARY_GRADIENT,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Withdraw",
                                    style: normalTextStyle.copyWith(
                                        color: REAL_WHITE),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: height * 0.7,
                    width: width,
                    padding: EdgeInsets.only(left: v16, right: v16),
                    decoration: BoxDecoration(
                        color: REAL_WHITE,
                        borderRadius: BorderRadius.circular(36)),
                    child: Column(
                      children: <Widget>[
                        //
                        Container(
                          margin: EdgeInsets.only(top: v16 / 2),
                          width: width,
                          child: TabBar(
                            controller: _tabController,
                            indicatorColor: APP_DARK,
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: REAL_BLACK,
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                            unselectedLabelColor: Color(0xff808080),
                            tabs: [
                              Tab(
                                text: 'Portfolio',
                              ),
                              Tab(
                                text: 'Prices',
                              ),
                              Tab(
                                text: 'Pro',
                              ),
                            ],
                          ),
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
