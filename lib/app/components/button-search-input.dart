import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSearchInput extends StatelessWidget {
  final Function() onPressed;
  const ButtonSearchInput({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: Icon(Icons.search, size: 30, color: Color(0xFF737373))),
    );
  }
}
