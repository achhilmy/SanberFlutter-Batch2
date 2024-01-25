import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_campus/materi13/cubit/counter_cubit.dart';

class CounterLogicPage extends StatelessWidget {
  const CounterLogicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example Counter Cubit")),
      body: BlocBuilder<IncrementEvent, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Value: $state',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () =>
                          context.read<IncrementEvent>().increment(),
                      child: Text('+'),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<DecrementEvent>().decrement(),
                      child: Text('-'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.read<IncrementEvent>().increment();
      //   },
      //   child: Icon(
      //     Icons.add,
      //   ),
      // ),
    );
  }
}
