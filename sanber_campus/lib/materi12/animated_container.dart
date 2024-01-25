import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Animation container")),
      body: Center(
        child: Column(children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: isContainerVisible ? 200 : 100,
            height: isContainerVisible ? 100 : 50,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Animation container Example",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isContainerVisible = !isContainerVisible;
                });
              }, child: Text("Toogle Change Animation"))
        ]),
      ),
    );
  }
}
