import 'package:bigwallet/views/colors.dart';
import 'package:bigwallet/views/widgets/buttons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

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
    return Scaffold(
      body: CupertinoPageScaffold(
          // navigationBar: ,
          resizeToAvoidBottomInset: false,
          child: Container(
            width: width,
            height: height,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: v16),
                  child: Center(
                    child: Text(
                      "Introduce yourself",
                      style: TextStyle(
                          color: REAL_WHITE,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: v16),
                  child: Center(
                    child: Text(
                      "Lets start by getting to know you better and continue register",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: APP_ACCENT, fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  child: CupertinoTextField(
                    padding: EdgeInsets.symmetric(
                        vertical: v16 * 1.3, horizontal: v16),
                    style: TextStyle(color: APP_ACCENT),
                    placeholder: "Full name",
                    decoration: BoxDecoration(
                        color: Color(0xff131118),
                        borderRadius: BorderRadius.circular(8)),
                    placeholderStyle: TextStyle(color: APP_ACCENT),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  child: CupertinoTextField(
                    padding: EdgeInsets.symmetric(
                        vertical: v16 * 1.3, horizontal: v16),
                    style: TextStyle(color: APP_ACCENT),
                    placeholder: "Middle name",
                    decoration: BoxDecoration(
                        color: Color(0xff131118),
                        borderRadius: BorderRadius.circular(8)),
                    placeholderStyle: TextStyle(color: APP_ACCENT),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  child: CupertinoTextField(
                    padding: EdgeInsets.symmetric(
                        vertical: v16 * 1.3, horizontal: v16),
                    style: TextStyle(color: APP_ACCENT),
                    placeholder: "Last Name",
                    decoration: BoxDecoration(
                        color: Color(0xff131118),
                        borderRadius: BorderRadius.circular(8)),
                    placeholderStyle: TextStyle(color: APP_ACCENT),
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                    child: Text(
                      "Date of birth",
                      style: TextStyle(color: APP_ACCENT, fontSize: 18),
                    )),
                Container(
                  margin: EdgeInsets.only(left: v16, right: v16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      dateTile(v16: v16, x: "xx", title: "Day"),
                      dateTile(v16: v16, x: "xx", title: "Month"),
                      dateTile(v16: v16, x: "xxxx", title: "Year"),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: v16 * 1.5, left: v16, right: v16),
                  decoration: BoxDecoration(
                      color: Color(0xff131118),
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            width: v16 * 2,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: v16 / 4),
                            height: v16 * 2,
                            width: 1.2,
                            decoration: BoxDecoration(
                                color: APP_ACCENT,
                                borderRadius: BorderRadius.circular(0.2)),
                          ),
                          Container(
                            child: Text(
                              "Choose your country...",
                              style: TextStyle(color: APP_ACCENT, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Icon(
                          LineAwesomeIcons.chevron_circle_up,
                          color: APP_ACCENT,
                        ),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  value: true,
                  tileColor: APP_ACCENT,
                  activeColor: APP_ACCENT,
                  onChanged: (_) {},
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "I understand and fully accept the terms of use of this service.",
                    style: TextStyle(color: APP_ACCENT, fontSize: 16),
                  ),
                ),
                DisabledButton(
                  context,
                  v16: v16,
                  text: "Next",
                  onTap: null,
                ),
              ],
            ),
          )),
    );
  }

  Container dateTile(
      {@required double v16, @required String x, @required String title}) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
                vertical: v16 * 0.6, horizontal: v16 * 0.75),
            decoration: BoxDecoration(
                color: APP_TEXTFIELD, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 4),
                  child: Text(
                    x,
                    style: TextStyle(color: APP_ACCENT, fontSize: 18),
                  ),
                ),
                Container(
                  child: Icon(
                    EvaIcons.arrowIosUpwardOutline,
                    color: APP_ACCENT,
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                title,
                style: TextStyle(color: APP_ACCENT, fontSize: 14),
              )),
        ],
      ),
    );
  }
}
