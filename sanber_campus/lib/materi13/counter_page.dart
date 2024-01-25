import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_campus/materi13/counter_logic_page.dart';
import 'package:sanber_campus/materi13/cubit/counter_cubit.dart';

class CounterMain extends StatelessWidget {
  const CounterMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Cubit',
      home: MultiBlocProvider(
        providers: [
          BlocProvider<IncrementEvent>(create: (context) => IncrementEvent()),
          BlocProvider<DecrementEvent>(create: (context) => DecrementEvent()),
        ],
        child: const CounterLogicPage(),
      ),
    );
  }
}
