import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class SingleTestAnimationPage extends StatelessWidget {
  const SingleTestAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: PhloxAnimations(
              fromOpacity: 0,
              fromY: -60,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.orangeAccent,
                child: const Text("Hello World"),
              ),
              duration: const Duration(seconds: 1)),
        ));
  }
}
