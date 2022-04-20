import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

/// main start
void main() {
  /// use materialApp for base design
  runApp(MaterialApp(
    title: 'Phlox Animations - Example',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: const ExampleCurves(),
  ));
}

/// [Example1] -> without controller
class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhloxAnimations(
          wait: const Duration(seconds: 3),
          duration: const Duration(seconds: 2),
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(32)),
          ),
          fromX: -200,
          toX: 200,
          fromY: -200,
          toY: 200,
          loop: true,
        ),
      ),
    );
  }
}

/// [Example2] -> with controller
class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  PhloxAnimationsController controller = PhloxAnimationsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.animationStatus);
          if (controller.animationStatus == AnimationStatus.dismissed ||
              controller.animationStatus == AnimationStatus.reverse) {
            controller.forward();
          } else if (controller.animationStatus == AnimationStatus.completed ||
              controller.animationStatus == AnimationStatus.forward) {
            controller.reverse();
          }
        },
      ),
      body: Center(
        child: PhloxAnimations.builder(
          auto: false,
          controller: controller,
          toDegrees: 90,
          duration: const Duration(seconds: 2),
          fromColor: Colors.blue.shade900,
          toColor: Colors.green,
          builder: (animations) {
            return Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: animations.color,
                borderRadius: BorderRadius.circular(32),
              ),
            );
          },
          fromX: -100,
          toX: 100,
          toY: 200,
          fromY: -200,
        ),
      ),
    );
  }
}

/// [Example3] -> with controller
class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  PhloxAnimationsController controller = PhloxAnimationsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhloxAnimations.custom(
          auto: false,
          controller: controller,
          duration: const Duration(seconds: 2),
          fromColor: Colors.redAccent,
          toColor: Colors.lightBlueAccent,
          builder: (animations) {
            return Transform.translate(
              offset: Offset(animations.moveX!, animations.moveY!),
              child: Transform.rotate(
                angle: controller.degreeToRadian(animations.rotate!),
                child: Transform.scale(
                  scale: animations.scale,
                  child: MaterialButton(
                    /// add forward and reverse click
                    /// instead of floating action button
                    onPressed: () {
                      if (controller.animationStatus ==
                              AnimationStatus.dismissed ||
                          controller.animationStatus ==
                              AnimationStatus.reverse) {
                        controller.forward();
                      } else if (controller.animationStatus ==
                              AnimationStatus.completed ||
                          controller.animationStatus ==
                              AnimationStatus.forward) {
                        controller.reverse();
                      }
                    },
                    // add color
                    color: animations.color,
                    shape: RoundedRectangleBorder(
                        // add radius
                        borderRadius:
                            BorderRadius.circular(animations.radius!)),
                    child: const Text("Animate me"),
                  ),
                ),
              ),
            );
          },
          fromX: -100,
          toX: 100,
          toY: 100,
          fromY: -100,
          toScale: 3,
          fromRadius: 8,
          // add fromRadius
          toRadius: 24, // add to radius
        ),
      ),
    );
  }
}

class ExampleControllerMethods extends StatefulWidget {
  const ExampleControllerMethods({Key? key}) : super(key: key);

  @override
  State<ExampleControllerMethods> createState() =>
      _ExampleControllerMethodsState();
}

class _ExampleControllerMethodsState extends State<ExampleControllerMethods> {
  PhloxAnimationsController controller = PhloxAnimationsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhloxAnimations(
            auto: false,
            controller: controller,
            duration: const Duration(seconds: 1),
            child: Container(
              color: Colors.orange,
              height: 100,
              width: 100,
            ),
            toX: 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller
                      ..newAnimate(fromX: 100, toX: -200)
                      ..forward();
                  },
                  icon: const Icon(Icons.arrow_back)),
              IconButton(
                  onPressed: () {
                    controller
                      ..newAnimate(fromX: -100, toX: 200)
                      ..forward();
                  },
                  icon: const Icon(Icons.arrow_forward)),
            ],
          )
        ],
      ),
    );
  }
}

class ExampleCurves extends StatelessWidget {
  const ExampleCurves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            if (MediaQuery.of(context).size.width > 1000)
              PhloxAnimations(
                toX: 1000,
                moveXCurve: Curves.easeInQuart, // curve
                duration: const Duration(seconds: 3),
                child: Image.network(
                  "https://www.kindpng.com/picc/m/53-534215_sports-car-png-red-sports-car-png-transparent.png",
                  width: 100,
                  height: 100,
                ),
              )
          ],
        ),
      ),
    );
  }
}
