import 'package:animation_testing_one/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationTesting());
}

class AnimationTesting extends StatelessWidget {
  const AnimationTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation Testing',
      home: HomePage(),
    );
  }
}
