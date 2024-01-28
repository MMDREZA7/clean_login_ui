import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.deepPurple[900],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
