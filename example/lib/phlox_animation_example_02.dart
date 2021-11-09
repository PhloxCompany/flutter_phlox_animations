import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class PhloxAnimationsExample02 extends StatelessWidget {
  /// constructor
  const PhloxAnimationsExample02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// page width to pixel
    var pageWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // animation 1
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.deepPurpleAccent,
            width: pageWidth * .25,
            child: const Center(
              child: Text("Item 1"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(milliseconds: 0),
          fromX: -24,
          fromOpacity: 0,
        ),

        // animation 2
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.orange,
            width: pageWidth * .25,
            child: const Center(
              child: Text("Item 2"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(milliseconds: 500),
          fromX: -24,
          fromOpacity: 0,
        ),

        // animation 3
        PhloxAnimations(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.green,
            width: pageWidth * .25,
            child: const Center(
              child: Text("Item 3"),
            ),
          ),
          duration: const Duration(seconds: 1),
          delay: const Duration(seconds: 1),
          fromX: -24,
          fromOpacity: 0,
        ),
      ],
    );
  }
}
