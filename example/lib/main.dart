import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'divider.dart';
import 'phlox_animation_example_01.dart';
import 'phlox_animation_example_02.dart';
import 'phlox_animation_example_03.dart';
import 'phlox_animation_example_04.dart';
import 'phlox_animation_example_05.dart';
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
