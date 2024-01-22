import 'package:flutter/material.dart';

class InfiniteLoopAnimationExample extends StatefulWidget {
  @override
  _InfiniteLoopAnimationExampleState createState() =>
      _InfiniteLoopAnimationExampleState();
}

class _InfiniteLoopAnimationExampleState
    extends State<InfiniteLoopAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Membuat AnimationController dengan durasi 2 detik dan repeat infiniti
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Loop Animation Example'),
      ),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Spinning',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
