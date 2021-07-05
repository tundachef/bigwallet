import 'package:bigwallet/views/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final double height, width, v16;
  final Function callback;
  const CustomDrawer(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.callback,
      @required this.v16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            child: InkWell(
          onTap: callback,
          child: Container(
            height: height,
            width: width,
            color: REAL_BLACK.withOpacity(0.2),
          ),
        )),
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            height: height - v16 * 2,
            width: width * 0.8,
            decoration: BoxDecoration(
                color: REAL_WHITE,
                borderRadius: BorderRadius.only(topRight: Radius.circular(48))),
            child: ListView(
              padding: EdgeInsets.only(top: v16, left: v16, right: v16),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: v16 / 2, top: v16, bottom: v16),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: callback,
                        child: Container(
                          child: Image.asset(
                            "assets/images/drawer_close.png",
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(right: v16 * 0.75, top: 4, bottom: 4),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          gradient: APP_PRIMARY_GRADIENT,
                          borderRadius: BorderRadius.circular(32)),
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(testImage),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Steve Johnson",
                              style: titleTextStyle.copyWith(
                                  foreground: Paint()..shader = APP_PRIMARY,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              "Wallet ID: BW75AS9654K",
                              style: TextStyle(fontSize: 14, color: APP_GREY),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                drawerTile("Transactions"),
                drawerTile("Account details"),
                drawerTile("Banks details"),
                drawerTile("Security details"),
                drawerTile("Support"),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    'FAQs',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: REAL_BLACK,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    'Contact us',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: REAL_BLACK,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    'Terms & Privacy Policy',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: REAL_BLACK,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, bottom: v16 / 2),
                  child: Text(
                    'Love BigWallet? Please rate us',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: REAL_BLACK,
                        fontSize: 16),
                  ),
                ),
                drawerTile("Log out"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container drawerTile(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: v16 / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w600, color: REAL_BLACK),
            ),
          ),
          Image.asset(
            "assets/images/arrow_up.png",
            width: 28,
          ),
        ],
      ),
    );
  }
}
