import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class PhloxAnimationsExample01 extends StatelessWidget {
  /// constructor
  const PhloxAnimationsExample01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // animation 1
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.deepPurpleAccent,
            width: 100,
            child: const Center(
              child: Text("Item 1"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(milliseconds: 0),
          fromY: -24,
          fromOpacity: 0,
        ),

        // animation 2
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.orange,
            width: 100,
            child: const Center(
              child: Text("Item 2"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(milliseconds: 500),
          fromY: -24,
          fromOpacity: 0,
        ),

        // animation 3
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.green,
            width: 100,
            child: const Center(
              child: Text("Item 3"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(seconds: 1),
          fromY: -24,
          fromOpacity: 0,
        ),
      ],
    );
  }
}
