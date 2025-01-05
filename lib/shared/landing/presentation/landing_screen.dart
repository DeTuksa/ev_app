import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: const ModelViewer(
            src: "assets/models/sedan-car.glb",
          ),
        ),
      ),
    );
  }
}
