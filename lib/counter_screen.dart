import 'package:flutter/material.dart';

import 'counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  final _bloc = CounterBloc();

  CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _bloc.counterStream,
      initialData: 0,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Counter Bloc'),
          ),
          body: Column(
            children: <Widget>[
              Text('Counter: ${snapshot.data}'),
              FloatingActionButton.extended(
                onPressed: _bloc.incrementCounter,
                label: const Text('Increment'),
              ),
              FloatingActionButton.extended(
                onPressed: _bloc.decrementCounter,
                label: const Text('Decrement'),
              ),
            ],
          ),
        );
      },
    );
  }
}
