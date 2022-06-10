import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPress;
  const CardItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(31, 128, 102, 102),
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      //padding: EdgeInsets.symmetric(horizontal: 32),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          primary: Color.fromARGB(255, 70, 70, 70),
          onSurface: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16),
          shadowColor: Color.fromARGB(31, 5, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: Icon(icon, color: Color(0xFF930000), size: 24)),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF930000)),
              )
            ]),
      ),
    );
  }
}
