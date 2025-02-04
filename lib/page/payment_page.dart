import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/shop.dart';
import 'package:weather/payment/Credit_Card_page';
import 'package:weather/payment/cashondelivery.dart';
import 'package:weather/payment/paypal_page.dart';
import 'package:weather/theme/colors.dart';


class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  void _navigateToPaymentPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<Shop>(context);
    
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total Amount: \$${shop.totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            
            const Text(
              "Select Payment Method:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 30),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                _navigateToPaymentPage(context, const CreditCardPage());
              },
              child: const Row(
                children:  [
                  
                  Icon(Icons.credit_card, color: Colors.white),
                  SizedBox(width: 10),
                  Text("Credit Card", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 30),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                _navigateToPaymentPage(context, const PayPalPayment());
              },
              child: const Row(
                children: [
                  Icon(Icons.paypal, color: Colors.white),
                  SizedBox(width: 10),
                  Text("PayPal", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 30),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                _navigateToPaymentPage(context, const CashOnDeliveryPayment());
              },
              child: const Row(
                children:  [
                  Icon(Icons.money, color: Colors.white),
                  SizedBox(width: 10),
                  Text("Cash on Delivery", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
