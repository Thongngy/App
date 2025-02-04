import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather/components/button.dart';
import 'package:weather/theme/colors.dart';
import '../models/food.dart';
import '../models/shop.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food
    });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

//quantity
int quantityCount = 0;

//decrement quantity
void decrementQuantity(){
  setState(() {
    if(quantityCount > 0){
    quantityCount--;
    }
  });
}
//increment quantity
void incrementQuantity(){
  setState(() {
    quantityCount++;
  });
}

 void addToCart() {
    if (quantityCount > 0) {
      final shop = context.read<Shop>();
      shop.addToCart(widget.food, quantityCount);

      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(
      //     content: Text("Successfully added to Cart!"),
      //     duration: Duration(seconds: 2),
      //   ),
      //);
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Success"),
          backgroundColor: primaryColor,
          content: const Text("Successfully added to Cart!",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          
          ),
          
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  
              },

              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body:  Column(children: [
        //listview of food details
      Expanded(child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            Image.asset(
                widget.food.imagePath,
                height: 200,
                ),
        
                const SizedBox(height: 25),
                Row(
                  children: [
                    Icon(Icons.star,
                    color: Colors.yellow[800]
                      ),
                const SizedBox(height: 10),
              //rating number
                Text(
                  widget.food.rating,
                  style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
      const SizedBox(height: 10),

      //food name

      Text(widget.food.name,
      style: GoogleFonts.dmSerifDisplay(fontSize: 28),
      ),

      const SizedBox(height: 25),

      //description
      Text("Description",
      style: TextStyle(
        color: Colors.grey[900],
        fontWeight: FontWeight.bold,
        fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Delicate sliced, fresh salmon drapes elegantly over apillow of perfectly seasone sushi rice Delicate sliced, fresh salmon drapes elegantly over apillow of perfectly seasone sushi rice Delicate sliced, fresh salmon drapes elegantly over apillow of perfectly seasone sushi rice.",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              height: 2,
            ),
           ),
          ],
        ),
      ),
    ),
        //price + quantify + add to cart button
        Container(
          color: primaryColor,
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
            //price + quantity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${widget.food.price}", 
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, 
                    fontSize: 18,
                  ),
                ),
                //quantity
                const SizedBox(width: 10),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: secondaryColor,
                      shape: BoxShape.circle,
                      ),
                      
                      child: IconButton(
                        icon: const Icon(Icons.remove), 
                        color: Colors.white,
                        onPressed: decrementQuantity,
                        ),
                    ),
                    //quantity count
                    SizedBox(
                      width: 40,
                      child: Center(
                        child: Text(
                          quantityCount.toString(),
                          style: const TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          
                          ),
                          ),
                      ),
                    ),

                    //plus button
                    Container(
                      decoration: BoxDecoration(color: secondaryColor,
                      shape: BoxShape.circle,
                      ),
                      
                      child: IconButton(
                        icon: const Icon(Icons.add), 
                        color: Colors.white,
                        onPressed: incrementQuantity,
                        ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 25),
            //add to cart button
            MyButton(text: "Add To Cart", 
            onTap: addToCart,
            ),
          ],
          ),
        ),
      ],
      ),
    );
  }
}