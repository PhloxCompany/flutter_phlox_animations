# 📱 Phlox Animations plugin

[![flutter animation pub get package version](https://img.shields.io/badge/pub-any-green)](https://pub.dev/packages/phlox_animations)
[![phlox company youtube](https://img.shields.io/badge/youtube-any-red)](https://youtube.com/c/phloxcompany)
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
<img src="https://api.phloxcompany.com/phlox_animations_files/scale.gif"
    width="40%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

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
<img src="https://api.phloxcompany.com/phlox_animations_files/moveX_01.gif"
    width="50%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
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
          fromX: -200, // add
          toX: 200, // add
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
<img src="https://api.phloxcompany.com/phlox_animations_files/moveXYLoop.gif"
width="40%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
```dart
class Example3 extends StatelessWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhloxAnimations(
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
          fromY: -200, /// add
          toY: 200, /// add
          loop: true, /// add **Loop**
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
<img src="https://api.phloxcompany.com/phlox_animations_files/controller01.gif"
width="50%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
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
          
          // add forward and reverse
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
        child: PhloxAnimations(
          auto: false, // add
          controller: controller, // add
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
          toDegrees: 90, // add
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
<img src="https://api.phloxcompany.com/phlox_animations_files/builder_color.gif"
width="50%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
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
        /// add .builder(
        child: PhloxAnimations.builder( 
          auto: false,
          controller: controller,
          duration: const Duration(seconds: 2),
          // add from color -> blue
          fromColor: Colors.blue.shade900,
          // add to color -> green
          toColor: Colors.green,
          // add builder instead of child
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
<img src="https://api.phloxcompany.com/phlox_animations_files/custom_scale_rotate_color.gif"
width="50%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
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



| WARNING: if you wanna add a click effect or button, add them inside #custom animations! |
| --- |



for example :
<br><br>
<img src="https://api.phloxcompany.com/phlox_animations_files/custom_button.gif"
width="100%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
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
                    /// add forward and reverse to button onPressed
                    /// instead of floating action button
                    onPressed: (){
                      if (controller.animationStatus == AnimationStatus.dismissed ||
                          controller.animationStatus == AnimationStatus.reverse) {
                        controller.forward();
                      } else if (controller.animationStatus == AnimationStatus.completed ||
                          controller.animationStatus == AnimationStatus.forward) {
                        controller.reverse();
                      }
                    },
                    // add color
                    color: animations.color,
                    shape: RoundedRectangleBorder(
                      // add radius
                        borderRadius: BorderRadius.circular(animations.radius!)
                    ),
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
          fromRadius: 8, // add fromRadius
          toRadius: 24, // add toRadius
        ),
      ),
    );
  }
}
```

# PhloxAnimationsController methods

if you add 

| PhloxAnimationsController controller = PhloxAnimationsController(); |
| --- |

You can animate your widget with the desired animations using 
```
    controller..animateTo(
      toX: -200
    )..forward();
```
in your button's onPressed

for example:

<br><br>
<img src="https://api.phloxcompany.com/phlox_animations_files/controller_methods_01.gif"
width="100%" alt="Flutter animations using phlox_animations package" loading="lazy"/>


### code:
```dart
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

                    // add animateTo
                    controller..animateTo(
                        toX: -200
                    )..forward();

                  }, icon: const Icon(Icons.arrow_back)),
              IconButton(
                  onPressed: () {

                    // add animateTo
                    controller..animateTo(
                        toX: 200
                    )..forward();

                  }, icon: const Icon(Icons.arrow_forward)),
            ],
          )
        ],
      ),
    );
  }
}
```

or you can add new animation for your widget using
```
    controller..newAnimate(
      fromX: 100,
        toX: -200
    )..forward();
```

for example:
<br><br>
<img src="https://api.phloxcompany.com/phlox_animations_files/controller_methods_02.gif"
width="100%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

### code:
```dart
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

                    controller..newAnimate(
                      fromX: 100,
                        toX: -200
                    )..forward();

                  }, icon: const Icon(Icons.arrow_back)),
              IconButton(
                  onPressed: () {

                    controller..newAnimate(
                        fromX: -100,
                        toX: 200
                    )..forward();

                  }, icon: const Icon(Icons.arrow_forward)),
            ],
          )
        ],
      ),
    );
  }
}
```

# but what is curve ?

if you check<b href="https://api.flutter.dev/flutter/animation/Curves-class.html" target="blank"> flutter curves class </b> 

for example:
<br><br>
<img src="https://api.phloxcompany.com/phlox_animations_files/ball_curve.gif"
width="60%" alt="Flutter animations using phlox_animations package" loading="lazy"/>
<br>
<img src="https://api.phloxcompany.com/phlox_animations_files/ball.gif"
width="100%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

#### code :
```dart
class ExampleCurves extends StatelessWidget {
  const ExampleCurves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            PhloxAnimations(
              toX: 400,
              moveXCurve: Curves.bounceOut, // curve
              toDegrees: 700,
              duration: const Duration(seconds: 3),
              child: Image.network(
                "https://pngimg.com/uploads/football/football_PNG28467.png",
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
```
### or

<br><br>
<img src="https://api.phloxcompany.com/phlox_animations_files/car_curve.gif"
width="60%" alt="Flutter animations using phlox_animations package" loading="lazy"/>
<br>
<img src="https://api.phloxcompany.com/phlox_animations_files/car.gif"
width="100%" alt="Flutter animations using phlox_animations package" loading="lazy"/>

```dart
toX: 400,
moveXCurve: Curves.easeInQuart
```

## Links

* [Website](https://phloxcompany.com)
* [Youtube channel](https://www.youtube.com/c/phloxcompany)
* [Instagram](https://instagram.com/flutter.phlox)
