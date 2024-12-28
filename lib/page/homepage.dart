import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: 
           Container( 
            width: 100,
              color: Colors.pink,
            ),
            ),
          Container(
              
              width: 100,
                color: Colors.pink[300],
                ),
          
          Container(
              width: 100,
                color: Colors.pink[200],
                ),   
        ],
      ),
    );
  }
}