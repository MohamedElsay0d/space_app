import 'package:flutter/material.dart';
import 'package:space_app/widgets/custom_appbar.dart';

class PlanetDetails extends StatelessWidget {
  const PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
        subtitle: 'Planet Details',
        title: 'Mars',
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250, 
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/earth.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mars is the fourth planet from the Sun and is often referred to as the Red Planet. Its reddish appearance is due to iron oxide, commonly known as rust, on its surface.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Distance from Sun (km): 227,943,824",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Length of Day (hours): 24.6",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Orbital Period (days): 687",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Radius (km): 3,389.5",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Gravity (m/s²): 3.721",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Surface (km²): 144.8 million",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
