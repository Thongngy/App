import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/shop.dart';
import 'package:weather/theme/colors.dart';
import 'package:weather/components/button.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void confirmDelivery(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Delivery Details Confirmed!")),
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
        title: const Text("Delivery Details"),
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
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Full Name"),
                validator: (value) => value!.isEmpty ? "Enter your name" : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: "Address"),
                validator: (value) => value!.isEmpty ? "Enter your address" : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: "Phone Number"),
                validator: (value) => value!.isEmpty ? "Enter phone number" : null,
              ),
              const SizedBox(height: 20),
              MyButton(
                text: "Confirm Delivery",
                onTap: () => confirmDelivery(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
