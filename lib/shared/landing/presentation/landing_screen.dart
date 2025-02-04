import 'package:ev_app/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: context.mediaQuery.size.width,
                  child: InteractiveViewer(
                    child: const ModelViewer(
                      src: "assets/models/sedan-car.glb",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                    color: Colors.grey.shade300
                  ),
                  child: Icon(
                    CupertinoIcons.power,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GlassmorphicContainer(
        width: context.mediaQuery.size.width,
        height: 60,
        blur: 20,
        alignment: Alignment.center,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF000000).withOpacity(0.1),
              const Color(0xFF000000).withOpacity(0.05),
            ],
            stops: const [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF000000).withOpacity(0.5),
            const Color((0xFF000000)).withOpacity(0.5),
          ],
        ),
        borderRadius: 2,
        border: 1,
        child: const Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              CupertinoIcons.car_detailed,
            ),
            Icon(
              Icons.flash_on,
            ),
            Icon(
              CupertinoIcons.map_fill,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
