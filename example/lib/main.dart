import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const AnimationsListPage(),
    );
  }
}

class AnimationsListPage extends StatefulWidget {
  const AnimationsListPage({Key? key}) : super(key: key);

  @override
  _AnimationsListPageState createState() => _AnimationsListPageState();
}

class _AnimationsListPageState extends State<AnimationsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PhloxAnimations(
            child: Container(
              color: Colors.lightGreen,
              height: 200,
              width: 200,
            ),
            fromY: -30,
            toY: 0,
            fromOpacity: 0.0,
            toOpacity: 1.0,
            duration: Duration(seconds: 2),
          )
        ],
      ),
    );
  }
}
