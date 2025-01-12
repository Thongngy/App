import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/components/button.dart';
import 'package:weather/theme/colors.dart';

import '../models/food.dart';
import 'package:weather/models/shop.dart';
class CartPage extends StatelessWidget { 
  const CartPage({super.key});

  // remove item from cart
  void removeFromCart(Food food, BuildContext context){
    // get access to shop
    final shop = context.read<Shop>();

  //remove from cart
  shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child)=>Scaffold(
      backgroundColor: primaryColor,
       appBar: AppBar(
        title: const Text("My Cart"),
         centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          //customer cart 
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index){
                //get food from cart
                final Food food = value.cart[index];
                //get food name
                final String foodName = food.name;
                //get food price
                final String foodPrice = food.price;
            
                //return list lite
                return Container(
                  
                  decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(80)),
                  margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: ListTile(
                    title: Text(
                      foodName, 
                      style: const TextStyle(color: Colors.white, 
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                    subtitle: Text(foodPrice,
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete,
                      color: Colors.grey[300],
                      ),
                    onPressed: () => removeFromCart(food, context),
                    ),
                  ),
                );
              },
              ),
          ),
            //Pay button

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(text: 
              "Pay Now", 
              onTap: (){},
              ),
            )
        ],
      ),
    ),
    );
    
  }
}







































































// import 'package:flutter/material.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Cart"),
//         centerTitle: true, // Center the title
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         foregroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.shopping_cart_outlined,
//               size: 80,
//               color: Colors.grey.shade400,
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Your cart is empty!',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey.shade600,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
