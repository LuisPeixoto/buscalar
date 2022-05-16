import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPress;
  final bool? border;
  const ListItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onPress,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(16),
            border: Border(
              bottom: BorderSide(
                color: border == false ? Colors.transparent : Color(0xFFE5E5E5),
                width: 1,
              ),
            )),
        //padding: EdgeInsets.symmetric(horizontal: 32),
        child: TextButton(
          onPressed: onPress,
          style: TextButton.styleFrom(
            primary: Color.fromARGB(255, 70, 70, 70),
            onSurface: Colors.white,
            shadowColor: Color.fromARGB(31, 5, 0, 0),
            padding: EdgeInsets.all(16),
            elevation: 0,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                margin: const EdgeInsets.only(right: 16),
                child: Icon(icon, color: Colors.black, size: 24)),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
            )
          ]),
        ),
      ),
    );
  }
}
