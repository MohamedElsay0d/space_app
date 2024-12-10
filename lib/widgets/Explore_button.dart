import 'package:flutter/material.dart';

class ExploreButton extends StatelessWidget {

  final VoidCallback onPressed; 

  ExploreButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
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
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            );
  }
}