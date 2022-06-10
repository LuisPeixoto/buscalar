import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void loading(BuildContext context) {
  (showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 200,
          //padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/loading.json', width: 120, height: 120),
              Text(
                "Carregando ...",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF5B6978),
                ),
              )
            ],
          ),
        ),
      );
    },
  ));
}
