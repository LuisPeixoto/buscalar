import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  final String title;
  final Function()? onPress;
  final IconData? icon;

  const ButtonSmall({
    Key? key,
    required this.title,
    required this.onPress,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.black87,
            primary: Color.fromARGB(163, 147, 0, 0),
            minimumSize: Size(88, 36),
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          onPressed: onPress,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(icon, color: Colors.white),
                      )
                    : SizedBox(),
                Text(title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ])),
    );
  }
}
