import 'package:flutter/material.dart';
import 'package:sanber_campus/materi10/materi_styling.dart';
import 'package:sanber_campus/materi10/splash_screen.dart';

import 'package:sanber_campus/materi15/routers_go.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: router_go,
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SplashScreen(),
    );
  }
}
