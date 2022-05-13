import 'package:flutter/material.dart';

class Select extends StatelessWidget {
  final String title;
  final String? value;
  final IconData icon;

  final Function(String?)? onChanged;
  final List<String> items;

  const Select({
    Key? key,
    required this.title,
    required this.icon,
    this.value,
    this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: InputDecorator(
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
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isDense: true,
            hint: Text(value == null ? title : value!),
            value: value,
            onChanged: onChanged,
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
