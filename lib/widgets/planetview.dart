import 'package:flutter/material.dart';
import 'package:space_app/data/planet.dart';
import 'package:space_app/views/planet_details.dart';
import 'package:space_app/widgets/Explore_button.dart';

class Planetview extends StatefulWidget {
  final List<Planet> planets;

  const Planetview({Key? key, required this.planets}) : super(key: key);

  @override
  State<Planetview> createState() => _PlanetviewState();
}

class _PlanetviewState extends State<Planetview> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: widget.planets.isNotEmpty
            ? PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: widget.planets.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'assets/images/${widget.planets[index].image}',
                      fit: BoxFit.fill,
                    ),
                  );
                },
              )
            : const Center(
                child: Text(
                  'No planets to display',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
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
            widget.planets.isNotEmpty
                ? widget.planets[_currentIndex].name
                : 'No Planets Available',
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
                if (_currentIndex < widget.planets.length - 1) {
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
            builder: (context) =>  PlanetDetails(planet: widget.planets[_currentIndex]),
          ),
        );
      }),
    ]);
  }
}
