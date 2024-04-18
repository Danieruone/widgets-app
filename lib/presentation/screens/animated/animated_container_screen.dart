import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated container"),
      ),
      body: Center(child: Container()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
