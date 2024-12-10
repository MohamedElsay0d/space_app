import 'package:flutter/material.dart';
import 'package:space_app/data/planet.dart';
import 'package:space_app/widgets/custom_appbar.dart';

class PlanetDetails extends StatelessWidget {
  Planet planet;
  PlanetDetails({required this.planet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        subtitle: planet.title,
        title: planet.name,
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/${planet.image}"),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    planet.about,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Distance from Sun (km): ${planet.distanceFromSun}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Length of Day (hours): ${planet.lengthOfDay}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Orbital Period (days): ${planet.orbitalPeriod}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Radius (km): ${planet.radius}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Gravity (m/s²): ${planet.gravity}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Surface (km²): ${planet.surfaceArea}",
                    style: const TextStyle(color: Colors.white),
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
