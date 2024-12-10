import 'package:flutter/material.dart';

import '../widgets/Explore_button.dart';
import 'explore_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              right: 20,
              top: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 250,
              left: 10,
              child: Text(
                'Explore\nThe\nUniverse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ExploreButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExploreScreen(),
                ),
              );
            }),
          ],
        ));
  }
}
