// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:weather/page/firsh_page.dart';
// import 'package:weather/page/second_page.dart'; // Ensure the correct import path and class name.

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(7, 71, 153, 50),
//         title: const Text('A B A'),
//       ),
//       drawer: Drawer(
//         child: Container(
//           color: const Color.fromRGBO(7, 71, 153, 50),
//           child: ListView(
//             children: [
//               const DrawerHeader(
//                 child: Center(
//                   child: Text(
//                     'Yem Thongngy',
//                     style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.person),
//                 title: const Text(
//                   'My Profile',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 subtitle: const Text('Description of Home Item 1'),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => FrishPage()),
//                   );
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.security),
//                 title: const Text(
//                   'Security',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => SecondPage()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(8.0),
//         children: <Widget>[
//           ListTile(
//             leading: const Icon(Icons.home),
//             title: const Text('Home Item 1'),
//             subtitle: const Text('Description of Home Item 1'),
//             onTap: () {
//               // Add functionality for tapping Home Item 1 if needed
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.access_alarm),
//             title: const Text('Home Item 2'),
//             subtitle: const Text('Description of Home Item 2'),
//             onTap: () {
//               // Add functionality for tapping Home Item 2 if needed
//             },
//           ),
         
//           // Add more ListTile items as necessary
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:weather/page/firsh_page.dart';
// import 'package:weather/page/second_page.dart'; // Ensure the correct import path and class name.

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(7, 71, 153, 50),
//         title: const Text('A B A'),
//       ),
//       drawer: Drawer(
//         child: Container(
//           color: const Color.fromRGBO(7, 71, 153, 50),
//           child: ListView(
//             children: [
//               DrawerHeader(
//                 decoration: const BoxDecoration(
//                   color: Colors.white, // Background color for the header
//                 ),
//                 child: Center(
//                   child: Image.asset(
//                     'lib/image/Image01.jpg', // Replace with your image path
//                     height: 200, // Adjust size as needed
//                   ),
                  
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.person, color: Colors.white),
//                 title: const Text(
//                   'My Profile',
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 subtitle: const Text(
//                   'Description of Home Item 1',
//                   style: TextStyle(color: Colors.white70),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => FrishPage()),
//                   );
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.security, color: Colors.white),
//                 title: const Text(
//                   'Security',
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => SecondPage()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(8.0),
//         children: <Widget>[
//           ListTile(
//             leading: const Icon(Icons.home),
//             title: const Text('Home Item 1'),
//             subtitle: const Text('Description of Home Item 1'),
//             onTap: () {
//               // Add functionality for tapping Home Item 1 if needed
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.access_alarm),
//             title: const Text('Home Item 2'),
//             subtitle: const Text('Description of Home Item 2'),
//             onTap: () {
//               // Add functionality for tapping Home Item 2 if needed
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
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
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Add functionality for the settings button
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Settings'),
                  content: const Text('Settings functionality coming soon!'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(7, 71, 153, 50),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color for the header
                ),
                child: Center(
                  child: Image.asset(
                    'lib/image/Image01.jpg', // Replace with your image path
                    height: 200, // Adjust size as needed
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text(
                  'My Profile',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                subtitle: const Text(
                  'Description of Home Item 1',
                  style: TextStyle(color: Colors.white70),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FrishPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.security, color: Colors.white),
                title: const Text(
                  'Security',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
              ),
              const Divider(color: Colors.white70), // Divider for visual separation
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  // Navigate to the settings page or add functionality here
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Settings'),
                      content: const Text('Settings functionality coming soon!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home Item 1'),
            subtitle: const Text('Description of Home Item 1'),
            onTap: () {
              // Add functionality for tapping Home Item 1 if needed
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Home Item 2'),
            subtitle: const Text('Description of Home Item 2'),
            onTap: () {
              // Add functionality for tapping Home Item 2 if needed
            },
          ),
        ],
      ),
    );
  }
}
