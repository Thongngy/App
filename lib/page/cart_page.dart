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
  return Consumer<Shop>(
    builder: (context, value, child) => Scaffold(
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
          // Customer cart
          Expanded(
            child: value.cart.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 80,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Your cart is empty!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      // Get food from cart
                      final Food food = value.cart[index];
                      // Return list item
                      return Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: ListTile(
                          title: Text(
                            food.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '\$${food.price}',
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.grey[300],
                            ),
                            onPressed: () => removeFromCart(food, context),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          // Total Price and Pay Button
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Total Price
                Text(
                  'Total: \$${value.totalPrice.toStringAsFixed(2)}',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                // Pay Button
                MyButton(
                  text: "Pay Now",
                  onTap: () {
                    // Implement payment logic
                  },
                ),
              ],
            ),
          ),
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
