# 📱 Phlox Animations plugin

[![flutter animation pub get package version](https://img.shields.io/badge/pub-1.0.1-red)](https://pub.dev/packages/phlox_animations)
[![flutter animation phlox company](https://img.shields.io/badge/Flutter-PhloxCompany-blue)](https://pub.dev/packages/phlox_animations)

**Phlox Animations** is a simple package to create beautiful custom animations .

- Animate **multiple properties** at once

## Getting started

- add package

```yaml
dependencies:
  phlox_animations: ^1.0.1
```

```commandline
flutter pub get
flutter pub upgrade
```

<!-- #toc -->

## Table of Contents

[**Overview**](#overview)

- [PhloxAnimations](#PhloxAnimations)
- [PhloxAnimations.move()]()
- [PhloxAnimations.opacity()]()
- [PhloxAnimations.rotate()]()
- [PhloxAnimations.scale()]()

<!-- // end of #toc -->

## Overview

PhloxAnimations consists of several's feature.

### PhloxAnimations

example :
<br><br>
<img src="https://github.com/phloxCompany/flutter_phlox_animations/blob/master/readme_files/phlox_animation_01.gif?raw=true" width="400" alt="Flutter animations"/>

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phlox_animations/phlox_animations.dart';

class PhloxAnimationsTest extends StatelessWidget {
  const PhloxAnimationsTest({Key? key}) : super(key: key);

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
```

another example full code :

```dart
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // page width 
    var pageWidth = MediaQuery
        .of(context)
        .size
        .width;
    return PhloxAnimations(
      child: Container(
        color: Colors.lightGreen,
        width: 100,
        height: 100,
        child: Text("hi"),
      ),
      duration: const Duration(seconds: 1),
      delay: Duration.zero,

      onStart : (){},
      // optional
      onComplete : (){},
      // optional
      onProgress : (progress){}, // progress is double 0 to 1
      fromX: 0,
      // optional
      toX: 0,
      // optional
      toY: 0,
      // optional
      fromY: 0,
      // optional
      fromDegrees: 0,
      // optional
      toDegrees: 0,
      // optional
      fromOpacity: 0,
      // optional
      toOpacity: 0,
      // optional
      fromScale: 0,
      // optional
      toScale: 0,
      // optional
      repeat: false, // optional
    );
  }
}
```
