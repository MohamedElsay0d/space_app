import 'package:flutter/material.dart';
import 'package:space_app/data/get_data.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/planetview.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppBar(
          title: 'Explore',
          subtitle: 'Which planet\nwould you like to explore?',
          showBackButton: false),
      body: FutureBuilder(
        future: DataLoader.loadPlanets(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Planetview(planets: snapshot.data!);
          }
        },
      ),
    );
  }
}
