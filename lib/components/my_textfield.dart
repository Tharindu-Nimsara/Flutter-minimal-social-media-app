import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {

  /// A custom text field widget.
  /// This widget is used to create a text field with a hint text, an option to obscure the text (for passwords),
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: const Color.fromARGB(255, 99, 98, 98)), // Make hintText more grey
        fillColor: Theme.of(context).colorScheme.primary,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
    );
  }
}
