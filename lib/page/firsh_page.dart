// import 'package:flutter/material.dart';
// class FrishPage extends StatelessWidget {
//   const FrishPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: Colors.blue,
//       body: Center(
//         child: Text(
//           'Frish Page'),
//           ));
//   }
// }
import 'package:flutter/material.dart';

class FrishPage extends StatelessWidget {
  const FrishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 71, 153, 50),
        title: const Text('Page 1'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigates back
          },
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page 1',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
