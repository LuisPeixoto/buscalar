import 'package:flutter/material.dart';

void alertDialog(BuildContext context, IconData icon, String title,
    String message, String textButton, Function()? onPressed) {
  (showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey[300],
              ),
              child: Icon(
                icon,
                color: Color.fromARGB(255, 187, 82, 74),
                size: 100,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.5),
            ),
          ],
        ),
        content: Text(message,
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: 18, color: Colors.grey[800], height: 1.5)),
        actions: <Widget>[
          TextButton(
            child: Text('Cancelar',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 187, 82, 74),
            ),
            child: TextButton(
              onPressed: onPressed,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(textButton,
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ),
        ],
      );
    },
  ));
}
