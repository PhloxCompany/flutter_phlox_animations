import 'package:flutter/material.dart';
import 'animation2_test_page.dart';

/// main start
void main() {
  /// use materialApp for base design
  runApp(MaterialApp(
    title: 'Phlox Animations - Example',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: const Animation2TestPage(),
  ));
}
