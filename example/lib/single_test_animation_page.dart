import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleTestAnimationPage extends StatelessWidget {
  final Widget animationWidget ;
  final String animationName ;
  const SingleTestAnimationPage({Key? key, required this.animationName, required this.animationWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(animationName),
          const SizedBox(height: 20,),

          Center(
            child: animationWidget,
          ),
        ],
      ),
    );
  }
}
