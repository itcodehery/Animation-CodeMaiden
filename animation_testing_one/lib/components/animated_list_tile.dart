import 'package:flutter/material.dart';

class AnimatedListTile extends StatefulWidget {
  const AnimatedListTile({super.key});

  @override
  _AnimatedListTileState createState() => _AnimatedListTileState();
}

class _AnimatedListTileState extends State<AnimatedListTile> {
  bool bigger = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: bigger ? Colors.red : Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      height: bigger ? 200 : 56,
      curve: bigger ? Curves.bounceOut : Curves.decelerate,
      duration: const Duration(milliseconds: 300),
      child: ListTile(
        title: const Text(
          "Hello World",
          style: TextStyle(color: Colors.white),
        ),
        subtitle: bigger
            ? const Text(
                'Expanded',
                style: TextStyle(color: Colors.white70),
              )
            : null,
        trailing: IconButton(
          icon: AnimatedRotation(
            turns: 2,
            duration: const Duration(milliseconds: 300),
            child: Icon(
              !bigger ? Icons.arrow_downward : Icons.arrow_upward,
              color: Colors.white,
              size: 20,
            ),
          ),
          onPressed: () {
            setState(() {
              bigger = !bigger;
            });
          },
        ),
      ),
    );
  }
}
