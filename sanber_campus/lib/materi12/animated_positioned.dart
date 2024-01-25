import 'package:flutter/material.dart';

class AnimatedPosotionedExample extends StatefulWidget {
  const AnimatedPosotionedExample({super.key});

  @override
  State<AnimatedPosotionedExample> createState() =>
      _AnimatedPosotionedExampleState();
}

class _AnimatedPosotionedExampleState extends State<AnimatedPosotionedExample> {
  bool isPositioned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Positioned Animation")),
      body: Center(
        child: Stack(children: [
          AnimatedPositioned(
              curve: Curves.easeIn,
              left: isPositioned ? 200 : 0,
              top: 50,
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    "Animation Positioned",
                    style: TextStyle(color: Colors.white),
                  )),
              duration: Duration(seconds: 3)),
          Positioned(
            top: 200,
            left: 50,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPositioned = !isPositioned;
                  });
                },
                child: Text("Toogle Change opacity Animation")),
          )
        ]),
      ),
    );
  }
}
