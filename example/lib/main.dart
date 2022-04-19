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
    home: const Example3(),
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
          duration: const Duration(seconds: 2),
          child: Container(
            color: Colors.red.shade900,
            child: const Text("Animate me"),
          ),
          fromY: -100,
          fromOpacity: .5,
          toDegrees: 90,
          toScale: 2,
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

  bool start = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Column(
        children: [
          PhloxAnimations(
            controller: controller,
            // new
            duration: const Duration(seconds: 2),
            onTap: () {
              print("object");
            },
            child: Container(
              color: Colors.red,
              width: 100,
              height: 200,
              child: Text("Animate me"),
            ),
            toY: 100,
          ),
        ],
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

  bool start = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PhloxAnimations.builder(
            controller: controller, // new
            duration: const Duration(seconds: 2),
            builder: (animations) => Transform.translate(
              offset: Offset(animations.moveX!, animations.moveY!),
              child: MaterialButton(
                onPressed: () {
                  print("Pressed");
                },
                child: Text("Click me"),
              ),
            ),
            toY: 100,
          ),
        ],
      ),
    );
  }
}
