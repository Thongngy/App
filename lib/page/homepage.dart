import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        children: [
           Expanded(
          child: Container(
            color: Colors.pink,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
          Expanded(
          child: Container(
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey,
          ),
        ),
      ],
      ),
    );
  }
}