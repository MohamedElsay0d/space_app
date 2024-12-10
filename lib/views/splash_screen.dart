import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
     Align(
  alignment: Alignment.bottomCenter,
  child: Container(
    margin: const EdgeInsets.all(15), 
    padding: const EdgeInsets.symmetric(horizontal: 20), 
    decoration: BoxDecoration(
      color: Colors.red, 
      borderRadius: BorderRadius.circular(30), 
    ),
    child: ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8), 
      title: const Text(
        'Explore',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  ),
),

  ],
)
    );
  }
}