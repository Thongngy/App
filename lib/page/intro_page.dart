import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 81, 70),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/image/sushi2.png'),
            ),
            const SizedBox(height: 25),
             Text(
              "THE TASTE OF JAPENESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),
            Text(
              "Feel the taste of the most popular Japenese food from anywhere and anytime",
              style: TextStyle(
              color: Colors.grey[300],
              height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //get started button
            MyButton(
              text: "Get Started",
              onTap: (){
                Navigator.pushNamed(context, '/menupage');
              },
              )


          ],
        ),
      ),
    );
  }
}
