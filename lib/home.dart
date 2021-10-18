import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

void main()=>runApp(const MaterialApp(home: Home(),));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          PhloxAnimations(
            child: Text("Animation test"),
            repeat: true,
            duration: Duration(seconds: 2),
            delay: Duration(seconds: 0),
          )
        ],
      ),
    );
  }
}
