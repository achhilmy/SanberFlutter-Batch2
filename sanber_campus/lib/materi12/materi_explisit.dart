import 'package:flutter/material.dart';

class MateriExplisitAnimation extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MateriExplisitAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorTween;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Tween untuk mengubah warna dari merah ke hijau
    _colorTween = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(_controller);

    // Memulai animasi
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animation Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _colorTween,
          builder: (context, child) {
            return Container(
              width: 200,
              height: 200,
              color: _colorTween.value,
              child: Center(
                child: Text(
                  'Color Transition',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
