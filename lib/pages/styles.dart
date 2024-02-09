import 'package:flutter/material.dart';

final text = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    fontFamily: 'Roboto',
    color: Colors.black
);
final style = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.all(0)),
    minimumSize: MaterialStateProperty.all(Size(160, 160)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        )
    )
);
final paddingStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        )
    )
);
final titleText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto'
);

class AppColor {
  static final greenColor = Color.fromARGB(35, 28, 169, 80);
  static final redColor = Color.fromARGB(35, 239, 68, 68);
  static final transparentColor = Color.fromARGB(255, 255, 251, 254);
}
