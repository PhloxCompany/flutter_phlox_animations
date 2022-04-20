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
    );
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
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/controller01.gif?raw=true"
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
          if (controller.animationStatus == AnimationStatus.dismissed ||
              controller.animationStatus == AnimationStatus.reverse) {
            controller.forward();
          } else if (controller.animationStatus == AnimationStatus.completed ||
              controller.animationStatus == AnimationStatus.forward) {
            controller.reverse();
          }
          start = !start;
        },
      ),
      body: Center(
        child: PhloxAnimations(
          auto: false,
          controller: controller,
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
          toDegrees: 90,
        ),
      ),
    );
  }
}
```


# Phlox Builder and Custom Animations

Animates the move x and y, rotate of a Widget within a state full widget using controller.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/builder_color.gif?raw=true"
width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
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
        /// .builder(
        child: PhloxAnimations.builder( 
          auto: false,
          controller: controller,
          duration: const Duration(seconds: 2),
          // from color -> blue
          fromColor: Colors.blue.shade900,
          // to color -> green
          toColor: Colors.green,
          // builder instead of child
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
          toDegrees: 90,
        ),
      ),
    );
  }
}
```

### or ( custom )

Animates the move x and y, rotate, scale of a Widget within a state full widget using controller.

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/custom_scale_rotate_color.gif?raw=true"
width="400" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
        // add .custom
        child: PhloxAnimations.custom(
            auto: false,
            controller: controller,
            duration: const Duration(seconds: 2),
            fromColor: Colors.blue.shade900,
            toColor: Colors.green,
            builder: (animations) {
              // move x, y
              return Transform.translate(
                offset: Offset(animations.moveX!, animations.moveY!),
                // rotate ( degree )
                child: Transform.rotate(
                  angle: controller.degreeToRadian(animations.rotate!),
                  // scale
                  child: Transform.scale(
                    scale: animations.scale,
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: animations.color,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ),
              );
            },
            fromX: -100,
            toX: 100,
            toY: 100,
            fromY: -100,
            toDegrees: 180,
            toScale: 2 // add scale
        ),
      ),
    );
  }

}
```


