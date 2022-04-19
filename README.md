# 📱 Phlox Animations plugin

[![flutter animation pub get package version](https://img.shields.io/badge/pub-1.0.1-red)](https://pub.dev/packages/phlox_animations)
[![flutter animation phlox company](https://img.shields.io/badge/Flutter-PhloxCompany-blue)](https://pub.dev/packages/phlox_animations)

**Phlox Animations** is a simple package to create beautiful custom animations .

- Animate **multiple properties** at once

## Getting started

- add package

```yaml
dependencies:
  phlox_animations: any
```

```commandline
    flutter pub get
    flutter pub upgrade
```

#### import library
```dart
  import 'package:phlox_animations/phlox_animations.dart';
```
<!-- #toc -->

## Table of Contents

### scale
Animates the scale of a Widget within a stateless widget.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/scale.gif?raw=true"
    width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhloxAnimations(
          duration: const Duration(seconds: 2),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(32)
            ),
          ),
          fromScale: 0,
          toScale: 2,
        ),
      ),
    );;
  }
}
```
### move

Animates the move x of a Widget within a stateless widget.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/moveX_01.gif?raw=true"
    width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
class Example2 extends StatelessWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhloxAnimations(
          duration: const Duration(seconds: 2),
          child: Container(
            height: 310,
            width: 310,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(32)
            ),
          ),
          fromX: -200, /// change
          toX: 200, /// change
        ),
      ),
    );
  }
}
```
### move x,*y* with **Loop**


Animates the move x of a Widget within a stateless widget.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/moveXYLoop.gif?raw=true"
width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
class Example3 extends StatelessWidget {
  const Example3({Key? key}) : super(key: key);

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
                borderRadius: BorderRadius.circular(32)
            ),
          ),
          fromX: -200,
          toX: 200,
          fromY: -200, /// change
          toY: 200, /// change
          loop: true, /// change **Loop**
        ),
      ),
    );
  }
}
```
# PhloxAnimationsController

You can control phlox animations with **PhloxAnimationsController**

### add animations controller
```dart
  PhloxAnimationsController controller = PhloxAnimationsController();
```

## move x and y with ***rotate***

Animates the move x,y and rotate of a Widget within a state full widget using controller.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/controller.gif?raw=true"
width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  PhloxAnimationsController controller = PhloxAnimationsController();

  bool start = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          start ? controller.forward() : controller.reverse();
          start = !start;
        },
      ),
      body: Center(
        child: PhloxAnimations(
          auto: false,
          controller: controller,
          toDegrees: 90,
          duration: const Duration(seconds: 2),
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(32)),
          ),
          fromX: -100,
          toX: 100,
          toY: 200,
          fromY: -200,
        ),
      ),
    );
  }
}
```






## Curves
<ifreme src="https://api.flutter.dev/flutter/animation/Curves-class.html" width="100%"></ifreme>