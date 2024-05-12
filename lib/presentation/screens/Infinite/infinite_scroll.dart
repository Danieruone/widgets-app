import 'package:flutter/material.dart';

class InfiniteScroll extends StatelessWidget {
  const InfiniteScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinite Scroll"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FadeInImage(
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/id/$index/500/300'));
        },
      ),
    );
  }
}
