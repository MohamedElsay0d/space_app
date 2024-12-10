import 'package:flutter/material.dart';
import 'package:space_app/widgets/Explore_button.dart';

import '../views/explore_screen.dart';

class Planetview extends StatefulWidget {
  const Planetview({super.key});

  @override
  State<Planetview> createState() => _PlanetviewState();
}

class _PlanetviewState extends State<Planetview> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> planets = [
    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
    },
    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
    },
    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
    },
    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
    },
    {
      'name': 'Saturn',
      'image': 'assets/images/saturn.png',
    },
    {
      'name': 'Sun',
      'image': 'assets/images/sun.png',
    },
    {
      'name': 'Uranus',
      'image': 'assets/images/uranus.png',
    },
    {
      'name': 'Venus',
      'image': 'assets/images/venus.png',
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemCount: planets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                planets[index]['image']!,
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                if (_currentIndex > 0) {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
          Text(
            planets[_currentIndex]['name']!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                if (_currentIndex < planets.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
        ],
      ),
      ExploreButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ExploreScreen(),
          ),
        );
      }),
    ]);
  }
}
