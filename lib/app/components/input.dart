import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  const Input({
    Key? key,
    required this.title,
    required this.icon,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        autofocus: true,
        obscureText: title.contains('Senha') ? true : false,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFEBEBEB),
          prefixIcon: Icon(icon, color: Color(0xFF949597)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFFEBEBEB),
              width: 1,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintStyle: TextStyle(color: Color(0xFF949597)),
          labelText: title,
        ),
      ),
    );
  }
}
