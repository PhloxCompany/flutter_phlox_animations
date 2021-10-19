import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class PhloxAnimationsExample04 extends StatelessWidget {
  const PhloxAnimationsExample04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var pageWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PhloxAnimations(
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
              fromX: 0,
              toX: 120,
              fromScale: 0,
              toScale: 2,
            ),
          ],
        ),

        SizedBox(height: 40, width: pageWidth,)
      ],
    );
  }
}
