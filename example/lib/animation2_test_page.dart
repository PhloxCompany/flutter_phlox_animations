import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:phlox_animations/phlox_animations.dart';

class Animation2TestPage extends StatefulWidget {
  const Animation2TestPage({Key? key}) : super(key: key);

  @override
  State<Animation2TestPage> createState() => _Animation2TestPageState();
}

class _Animation2TestPageState extends State<Animation2TestPage> {
  PhloxAnimationsController controller = PhloxAnimationsController();
  int second = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller
            ..animateTo(
              toDegrees: controller.rotate!.value + 50,
              toScale: 3,
              toColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              toY: controller.moveY!.value + 20,
            )
            ..forward();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: PhloxAnimations.builder(
          controller: controller,
          fromX: 130,
          fromY: 30,
          toY: 0,
          toX: 0,
          toColor: Colors.lightGreen,
          colorChangeCurve: Curves.ease,
          moveXCurve: Curves.easeInExpo,
          progress: (progress) {},
          builder: (animations) {
            return Container(
              color: animations.color,
              child: Text("progress => ${animations.progress}"),
            );
          },
          duration: Duration(seconds: second),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                controller
                  ..animateTo(toX: -120)
                  ..duration = Duration(seconds: second)
                  ..forward();
              },
              icon: const Icon(Icons.arrow_left)),
          IconButton(
              onPressed: () {
                controller
                  ..animateTo(toY: -120)
                  ..duration = Duration(seconds: second)
                  ..forward();
              },
              icon: const Icon(Icons.arrow_drop_up)),
          IconButton(
              onPressed: () {
                controller
                  ..animateTo(toY: 120)
                  ..duration = Duration(seconds: second)
                  ..forward();
              },
              icon: const Icon(Icons.arrow_drop_down_rounded)),
          IconButton(
              onPressed: () {
                controller
                  ..animateTo(toX: 120)
                  ..duration = Duration(seconds: second)
                  ..forward();
              },
              icon: const Icon(Icons.arrow_right)),
        ],
      ),
    );
  }
}
