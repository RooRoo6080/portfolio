import 'package:flutter/material.dart';

const Color kPrimaryColor = Colors.blueGrey;
const Color kBackgroundColor = Color(0xFF1f1f1f);
const Color kDangerColor = Colors.blue;
const Color kCaptionColor = Colors.white70;

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
