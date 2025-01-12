import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather/components/button.dart';
import 'package:weather/components/food_tile.dart';
import 'package:weather/theme/colors.dart';

import '../models/shop.dart';
import 'food_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //navigate to food item
  void navigateToFoodDetails(int index){
    //get the shop and it's menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context, 
      MaterialPageRoute(
      builder: (context) => FoodDetailsPage(
        food:foodMenu[index],
      ),
      ),
      );
  }
  @override
  Widget build(BuildContext context) {
     //get the shop and it's menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: true,
        leading: const Tooltip(
          message: "Menu",
          child: Icon(Icons.menu),
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(onPressed:(){
            Navigator.pushNamed(context, '/cartpage');
          }, 
          icon: const Icon(
            Icons.shopping_cart, 
            //color: Colors.grey
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          _buildPromoSection(),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Food...",
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: foodMenu.isEmpty
                  ? const Center(child: Text("No food items available"))
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodMenu.length,
                      itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                        onTap: () => navigateToFoodDetails(index),
                        ),
                    ),
            ),
          ),
          const SizedBox(height: 25),
          _buildPopularFood(),
        ],
      ),
    );
  }

  Widget _buildPromoSection() {
    return Container(
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
          Image.asset('lib/image/sushi3.png', height: 100),
        ],
      ),
    );
  }

  Widget _buildPopularFood() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('lib/image/sushi2.png', height: 60),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Salmon Eggs",
                    style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$21.00',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.favorite_outline, color: Colors.grey),
        ],
      ),
    );
  }
}
