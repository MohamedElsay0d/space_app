import 'package:flutter/material.dart';

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
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        title: 'Explore', 
        subtitle: 'Which planet\nwould you like to explore?',
        showBackButton: false),
      body: const Planetview(),
    );
  }
}
