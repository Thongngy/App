import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/components/button.dart';
import 'package:weather/components/food_tile.dart';
import 'package:weather/models/food.dart';
import 'package:weather/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
    Food(
      name: "Salmon Sushi", 
      price: "21.00", 
      imagePath: "lib/image/sushi2.png", 
      rating: "4.7"
      ),
      Food(
      name: "Salmon", 
      price: "25.00", 
      imagePath: "lib/image/sushi.png", 
      rating: "4.1"),

      Food(
      name: "Tuna", 
      price: "20.00", 
      imagePath: "lib/image/nigiri.png", 
      rating: "4.1"),
       Food(
      name: "Tuna", 
      price: "20.00", 
      imagePath: "lib/image/nigiri.png", 
      rating: "4.1"),
  ];



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true, // Center the title
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[900],
                fontSize: 18,
              ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
        children: [
          // Promo container
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GET 32% PROMO',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'lib/image/sushi3.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          // Food menu title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(
            itemCount: foodMenu.length,
            itemBuilder: (context,index) => FoodTile(
              food: foodMenu[index],
            ),
            ),
            ),

          //popular
        ],
      ),
    );
  }
}
