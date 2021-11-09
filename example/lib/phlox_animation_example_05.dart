import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class PhloxAnimationsExample05 extends StatelessWidget {
  const PhloxAnimationsExample05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageWidth = MediaQuery.of(context).size.width;

    return PhloxAnimations(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        color: Colors.lightBlue,
        width: pageWidth * .25,
        child: const Center(
          child: Text("Item 1"),
        ),
      ),
      duration: const Duration(seconds: 1),
      delay: const Duration(milliseconds: 0),
      toDegrees: 180,
    );
  }
}
