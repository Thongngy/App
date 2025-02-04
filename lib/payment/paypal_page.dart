import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/shop.dart';
import 'package:weather/theme/colors.dart';
import 'package:weather/components/button.dart';

class PayPalPayment extends StatefulWidget {
  const PayPalPayment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PayPalPaymentPageState createState() => _PayPalPaymentPageState();
}

class _PayPalPaymentPageState extends State<PayPalPayment> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void processPayment(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("PayPal Payment Successful!")),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<Shop>(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text("PayPal Payment"),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
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
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PayPal Account",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                      ),
                      validator: (value) => value!.isEmpty ? "Enter PayPal email" : null,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                      ),
                      validator: (value) => value!.isEmpty ? "Enter PayPal password" : null,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const SizedBox(height: 20),
              MyButton(
                text: "Confirm Payment",
                onTap: () => processPayment(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
