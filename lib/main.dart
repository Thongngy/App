import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/shop.dart';
import 'package:weather/page/cart_page.dart';
import 'page/intro_page.dart'; // Replace 'your_app' with your app's package name
import 'page/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(), 
      child: const MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}




