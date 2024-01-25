import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool isOpacity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Animation Opacity")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedOpacity(
              opacity: isOpacity ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Container(
                height: 60,
                width: 200,
                color: Colors.amber,
                child: Text(
                  "Animated Opacity",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isOpacity = !isOpacity;
                });
              },
              child: Text("Toogle Change opacity Animation"))
        ]),
      ),
    );
  }
}
