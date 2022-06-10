import 'package:Buscalar/app/classes/Immobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Point extends StatelessWidget {
  final Immobile immobile;
  const Point({
    Key? key,
    required this.immobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {
        var data = {
          'immobile': immobile,
        };
        Modular.to.pushNamed('/announcement/', arguments: data);
      },
      child: Row(
        children: [
          Container(
            //color: Colors.black,
            width: 50,
            margin: EdgeInsets.only(right: 5),
            child: SvgPicture.asset(
                immobile.type == 'Aluguel'
                    ? 'assets/point-rent.svg'
                    : 'assets/point-sale.svg',
                fit: BoxFit.contain),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: (BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 142, 142, 142),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            )),
            child: Text(
              'R\$${immobile.price}',
              style: TextStyle(
                  fontSize: 16,
                  color: immobile.type == 'Aluguel'
                      ? Color(0xFF07A116)
                      : Color(0xFF930000),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
