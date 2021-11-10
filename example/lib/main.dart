import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'divider.dart';
import 'single_test_animation_page.dart';

/// main start
void main() {
  /// use materialApp for base design
  runApp(MaterialApp(
    title: 'Phlox Animations - Example',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: const SingleTestAnimationPage(),
  ));
}

class AnimationsListPage extends StatelessWidget {
  /// constructor
  const AnimationsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// hide navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("PhloxAnimations - Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
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
          ],
        ),
      ),
    );
  }
}

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

class PhloxAnimationsExample03 extends StatelessWidget {
  /// constructor
  const PhloxAnimationsExample03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          fromX: 0,
          toX: 130,
        ),
      ],
    );
  }
}

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
        SizedBox(
          height: 40,
          width: pageWidth,
        )
      ],
    );
  }
}

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
