import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(
      title: 'Search for the food',
      caption:
          'Consequat sit occaecat exercitation eu occaecat ut non sint irure laborum fugiat culpa adipisicing aliqua.',
      imageUrl: 'assets/images/1.png'),
  SlideInfo(
      title: 'Quick delivery',
      caption: 'Nisi ut nulla officia ex elit.',
      imageUrl: 'assets/images/2.png'),
  SlideInfo(
      title: 'Enjoy the food',
      caption:
          'Consequat quis sit incididunt nostrud laboris pariatur aute.Eu do esse in laboris.',
      imageUrl: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [],
      ),
    );
  }
}
