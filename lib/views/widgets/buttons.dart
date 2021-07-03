import 'package:flutter/cupertino.dart';

import '../colors.dart';

GestureDetector AccentButton(BuildContext context,
    {@required double v16, @required Function onTap, @required String text}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: v16 * 1.5, left: v16 * 2, right: v16 * 2),
      padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16 * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(v16 * 2),
        color: Color(0xff1C1924),
      ),
      child: Center(
          child: Text(
        text,
        style:
            normalTextStyle.copyWith(foreground: Paint()..shader = APP_PRIMARY),
      )),
    ),
  );
}

GestureDetector PrimaryButton(BuildContext context,
    {@required double v16, @required Function onTap, @required String text}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: v16 * 1.5, left: v16 * 2, right: v16 * 2),
      padding: EdgeInsets.symmetric(vertical: v16, horizontal: v16 * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(v16 * 2),
        gradient: APP_PRIMARY_GRADIENT,
      ),
      child: Center(
          child: Text(
        text,
        style: normalTextStyle.copyWith(color: REAL_WHITE),
      )),
    ),
  );
}
