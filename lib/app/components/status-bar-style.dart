import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void StatusBarStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}
