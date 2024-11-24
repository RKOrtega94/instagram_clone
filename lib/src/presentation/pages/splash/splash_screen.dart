import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String route = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Center(
              child: Icon(
                Icons.camera,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
