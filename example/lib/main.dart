import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'divider.dart';
import 'phlox_animation_example_01.dart';
import 'phlox_animation_example_02.dart';
import 'phlox_animation_example_03.dart';
import 'phlox_animation_example_04.dart';
import 'phlox_animation_example_05.dart';

void main() {
  runApp(MaterialApp(
    title: 'Phlox Animations - Example',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: const AnimationsListPage(),
  ));
}

class AnimationsListPage extends StatelessWidget {
  const AnimationsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PhloxAnimations - Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1 ______________
            SimpleDivider(text: "1"),
            PhloxAnimationsExample01(),

            // 2 ______________
            SimpleDivider(text: "2"),
            PhloxAnimationsExample02(),

            // 3 ______________
            SimpleDivider(text: "3"),
            PhloxAnimationsExample03(),

            // 4 ______________
            SimpleDivider(text: "4"),
            PhloxAnimationsExample04(),

            // 5 ______________
            SimpleDivider(text: "5"),
            PhloxAnimationsExample05(),

            PhloxAnimations(
              child: Container(
                color: Colors.lightGreen, // use animated value
                width: 100,
                height: 100,
                child: Text("hi"),
              ),
              duration: const Duration(seconds: 1),
              delay: Duration.zero,
              fromX: 0, // optional
              toX: 0, // optional
              toY: 0, // optional
              fromY: 0, // optional
              fromDegrees: 0, // optional
              toDegrees: 0, // optional
              fromOpacity: 0, // optional
              toOpacity: 0, // optional
              fromScale: 0, // optional
              toScale: 0, // optional
              repeat: false, // optional
            )
          ],
        ),
      ),
    );
  }
}
