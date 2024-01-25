import 'package:flutter/material.dart';

class CombineAnimationExample extends StatefulWidget {
  @override
  _CombineAnimationState createState() => _CombineAnimationState();
}

class _CombineAnimationState extends State<CombineAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller with a duration of 1 second
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // Create an opacity animation
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Create a size animation
    _sizeAnimation =
        Tween<double>(begin: 50.0, end: 200.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Combined Animation Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _sizeAnimation.value,
              height: _sizeAnimation.value,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Animated Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacityAnimation.value,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start the animation when the button is pressed
          _controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }
}
