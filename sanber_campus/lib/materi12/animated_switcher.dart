import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool isSwitcher = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Swithcer Animation")),
      body: Center(
        child: Column(children: [
          AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: !isSwitcher
                  ? Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                        "Animated Switcher",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  : Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      padding: EdgeInsets.all(20),
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )),
          SizedBox(
            height: 10,
          ),
          Positioned(
            top: 200,
            left: 50,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSwitcher = !isSwitcher;
                  });
                },
                child: Text("Toogle Change opacity Animation")),
          )
        ]),
      ),
    );
  }
}
