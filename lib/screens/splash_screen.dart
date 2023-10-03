import 'package:dicoding_cook_easy/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill)),
          ),
          SafeArea(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/food.png',
                  height: 400,
                  width: 400,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Start cooking\nfrom today',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFEA5753)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
