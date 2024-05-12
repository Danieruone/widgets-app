import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      if (pageViewController.page == 2.0) {
        setState(() {
          endReached = true;
        });
      } else {
        setState(() {
          endReached = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slide) => _Slide(
                      title: slide.title,
                      caption: slide.caption,
                      imageUrl: slide.imageUrl))
                  .toList()),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text("Skip"),
                onPressed: () => context.pop(),
              )),
          Positioned(
              right: 30,
              bottom: 30,
              child: FilledButton(
                onPressed: endReached ? () => context.pop() : null,
                child: const Text("Start"),
              ))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final tileStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: tileStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          )
        ],
      )),
    );
  }
}
