import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: <Color>[
            Color.fromARGB(255, 4, 69, 122),
            Color.fromARGB(255, 192, 187, 194),
          ],
        ),
      ),
    ),
  );
}
