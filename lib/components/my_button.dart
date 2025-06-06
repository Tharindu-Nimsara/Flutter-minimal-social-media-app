import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  /// A custom button widget.
  /// This widget is used to create a button with a title and an optional icon.
  final String text;
  final void Function()? onTap;

  const MyButton({super.key, 
  required this.text, 
  required this.onTap
  }); 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}