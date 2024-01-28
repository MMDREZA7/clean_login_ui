import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final icon;

  const MyTextField({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.focusNode,
    required this.nextFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.deepPurple.shade900,
          width: 3,
        ),
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Colors.deepPurple.shade900,
            ),
          ),
          child: Icon(
            icon,
            color: Colors.deepPurple.shade900,
          ),
        ),
        title: TextFormField(
          cursorColor: Colors.black,
          cursorWidth: 3,
          focusNode: focusNode,
          onFieldSubmitted: (value) =>
              FocusScope.of(context).requestFocus(nextFocusNode),
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple.shade900,
            ),
          ),
        ),
      ),
    );
  }
}
