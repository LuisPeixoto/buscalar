import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Map<int, Color> color = {
    50: Color.fromRGBO(51, 153, 255, .1),
    100: Color.fromRGBO(51, 153, 255, .2),
    200: Color.fromRGBO(51, 153, 255, .3),
    300: Color.fromRGBO(51, 153, 255, .4),
    400: Color.fromRGBO(51, 153, 255, .5),
    500: Color.fromRGBO(51, 153, 255, .6),
    600: Color.fromRGBO(51, 153, 255, .7),
    700: Color.fromRGBO(51, 153, 255, .8),
    800: Color.fromRGBO(51, 153, 255, .9),
    900: Color.fromRGBO(51, 153, 255, 1),
  };
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscalar',
      theme: ThemeData(
          primaryColor: Color(0xFF930000),
          backgroundColor: Color(0xFFFAFAFA),
          primarySwatch: MaterialColor(0xFF930000, color)),
    ).modular();
  }
}
