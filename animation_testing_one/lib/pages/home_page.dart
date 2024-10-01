import 'package:animation_testing_one/components/animated_list_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Testing')),
      body: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              controller: ScrollController(
                initialScrollOffset: 0,
                keepScrollOffset: true,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const AnimatedListTile();
              })),
    );
  }
}
