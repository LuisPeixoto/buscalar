import 'package:flutter/material.dart';

class InputSearchHome extends StatelessWidget {
  final String title;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  const InputSearchHome({
    Key? key,
    required this.title,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 1,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintStyle: TextStyle(
            color: Color(0xFF949597),
            fontSize: 18,
          ),
          hintText: title,
        ),
      ),
    );
  }
}
