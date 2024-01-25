import 'package:flutter/material.dart';

class AnimatedExplisitExample extends StatefulWidget {
  const AnimatedExplisitExample({super.key});

  @override
  State<AnimatedExplisitExample> createState() =>
      _AnimatedExplisitExampleState();
}

class _AnimatedExplisitExampleState extends State<AnimatedExplisitExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    //create an animation controller with duration of 1 second
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    // create tween that goes from 0.0
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Explisit"),
      ),
      body: Center(
        child: Column(children: [
          FadeTransition(
            opacity: _animation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                  child: Text(
                'Animated Container',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                _controller.forward();
              },
              child: Text('Start Animation'))
        ]),
      ),
    );
  }
}
