import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  final imagePath;
  const ContinueWith({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}
