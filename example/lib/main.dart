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
    home: const Example1(),
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
            height: 310,
            width: 310,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(32)
            ),
          ),
          fromX: -200,
          toX: 200,
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
          PhloxAnimations.builder(
            duration: const Duration(seconds: 2),
            builder: (animations){
              return Container(
                color: Colors.red,
                width: 100,
                height: 200,
                child: Text("Animate me"),
              );
            },

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
          PhloxAnimations.custom(
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
