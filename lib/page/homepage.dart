
import 'package:flutter/material.dart';
import 'package:weather/page/firsh_page.dart';
import 'package:weather/page/second_page.dart'; // Ensure the correct import path and class name.

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 71, 153, 50),
        title: const Text('A B A'),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(7, 71, 153, 100),
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 1',
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FrishPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Page 2',
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
