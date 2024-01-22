import 'package:flutter/material.dart';

class CatLandingAnimation extends StatefulWidget {
  @override
  _CatLandingAnimationState createState() => _CatLandingAnimationState();
}

class _CatLandingAnimationState extends State<CatLandingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Membuat AnimationController dengan durasi 2 detik
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Membuat animasi berupa translasi vertikal (Y) dari atas ke bawah
    _animation = Tween<double>(begin: -100.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Memulai animasi
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Landing Animation'),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0.0, _animation.value),
            child: Center(
              child: Image.asset(
                'assets/image/logo.jpeg', // Ganti dengan path gambar kucing Anda
                width: 150.0,
                height: 150.0,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
