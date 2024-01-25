import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_campus/materi10/home_screen.dart';
import 'package:sanber_campus/materi11/read_data.dart';
import 'package:sanber_campus/materi12/animated_container.dart';
import 'package:sanber_campus/materi12/animated_explisit.dart';
import 'package:sanber_campus/materi12/animated_positioned.dart';
import 'package:sanber_campus/materi12/animated_switcher.dart';
import 'package:sanber_campus/materi12/animation_opacity.dart';
import 'package:sanber_campus/materi12/combine_animation.dart';
import 'package:sanber_campus/materi12/materi_explisit.dart';
import 'package:sanber_campus/materi13/counter_logic_page.dart';
import 'package:sanber_campus/materi13/counter_page.dart';
import 'package:sanber_campus/materi13/cubit/counter_cubit.dart';
import 'package:sanber_campus/materi16/drawers.dart';

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
      home: CounterPageStatful(),

      //  CounterLogicPage(),
    );
  }
}

class CounterPageStatful extends StatefulWidget {
  const CounterPageStatful({super.key});

  @override
  State<CounterPageStatful> createState() => _CounterPageStatfulState();
}

class _CounterPageStatfulState extends State<CounterPageStatful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Test State local"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() {
              _counter++;
            }),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => setState(() {
              _counter--;
            }),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
