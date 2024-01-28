import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: Text(
          'H O M E',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple[300],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'H e l l o',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
