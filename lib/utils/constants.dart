import 'package:flutter/material.dart';

// const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
// const Color kPrimaryColor = Color.fromRGBO(242, 201, 76, 1);
// const Color kSecondaryColor = Color.fromRGBO(242, 201, 76, 1);
const Color kBackgroundColor = Colors.black;
const Color kPrimaryColor = Color.fromRGBO(249, 77, 30, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
