import 'package:flutter/material.dart';

class GestureAnimationExample extends StatefulWidget {
  const GestureAnimationExample({super.key});

  @override
  _GestureAnimationExampleState createState() =>
      _GestureAnimationExampleState();
}

class _GestureAnimationExampleState extends State<GestureAnimationExample> {
  double _positionX = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Animation Example'),
      ),
      body: GestureDetector(
        onTap: (){},
        onHorizontalDragUpdate: (details) {
          // Geser ke kanan (+ve) atau ke kiri (-ve)
          setState(() {
            _positionX += details.primaryDelta!;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: Colors.blue,
          margin: EdgeInsets.only(left: _positionX),
          child: const Center(
            child: Text(
              'Swipe me!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
