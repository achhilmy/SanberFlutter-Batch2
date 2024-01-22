import 'package:flutter/material.dart';
import 'package:sanber_campus/materi10/materi_styling.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    print("Ini Halaman splash");
    splashToStyling();
  }

  Future<void> splashToStyling() async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const StylingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/logo_splash.png"),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text("Now Loading . . .")
          ],
        ),
      ),
    );
  }
}
