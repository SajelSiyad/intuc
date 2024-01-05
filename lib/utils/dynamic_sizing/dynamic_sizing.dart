import 'package:flutter/material.dart';

class R {
  static double rh(double h, BuildContext context) {
    return MediaQuery.of(context).size.height * (h / 812);
  }

  static double rw(double w, BuildContext context) {
    return MediaQuery.of(context).size.width * (w / 375);
  }
}
