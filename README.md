# 📱 Phlox Animations plugin

[![flutter animation pub get package version](https://img.shields.io/badge/pub-0.0.2-red)](https://pub.dev/packages/phlox_animations)
[![flutter animation awesome Flutter](https://img.shields.io/badge/awesome-Flutter-blue)](https://pub.dev/packages/phlox_animations)

**Phlox Animations** is a simple package to create beautiful custom animations . 
- Animate **multiple properties** at once

## Getting started

- add package

```yaml
dependencies:
  phlox_animations: ^0.0.2
```

```commandline
flutter pub get
flutter pub upgrade
```

<!-- #toc -->

## Table of Contents

[**Overview**](#overview)

- [PhloxAnimations](#PhloxAnimations)
- [PhloxAnimations.move()](#phlox-animations-move)
- [PhloxAnimations.opacity()](#phlox-animations-opacity)
- [PhloxAnimations.rotate()](#phlox-animations-rotate)
- [PhloxAnimations.scale()](#phlox-animations-scale)

<!-- // end of #toc -->

## Overview

PhloxAnimations consists of several's feature.

### PhloxAnimations

example :

```dart
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

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
        color: Colors.lightGreen, // use animated value
        width: 100,
        height: 100,
        child: Text("hi"),
      ),
      duration: const Duration(seconds: 1),
      delay: Duration.zero,
      fromX: 0, // optional
      toX: 0, // optional
      toY: 0, // optional
      fromY: 0, // optional
      fromDegrees: 0, // optional
      toDegrees: 0, // optional
      fromOpacity: 0, // optional
      toOpacity: 0, // optional
      fromScale: 0, // optional
      toScale: 0, // optional
      repeat: false, // optional
    );
  }
}
```
