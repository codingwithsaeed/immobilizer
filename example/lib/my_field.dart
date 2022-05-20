import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final String label;
  const MyField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          isDense: true),
    );
  }
}