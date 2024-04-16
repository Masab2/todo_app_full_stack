import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get mh => MediaQuery.sizeOf(this).height;

  double get mw => MediaQuery.sizeOf(this).width;
}

extension padding on num {
  SizedBox ph(BuildContext context) {
    return SizedBox(height: MediaQuery.sizeOf(context).height * this);
  }

  SizedBox pw(BuildContext context) {
    return SizedBox(width: MediaQuery.sizeOf(context).width * this);
  }
}