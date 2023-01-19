import 'package:flutter/material.dart';

import '../blocs/counter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _counterBloc = CounterBloc();

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Bloc'),
      ),
      body: StreamBuilder<int>(
        stream: _counterBloc.counter,
        initialData: _counterBloc.count,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(),
              Text(
                'Counter: ${snapshot.data}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              FloatingActionButton.extended(
                label: const Text('Increment'),
                onPressed: _counterBloc.increment,
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                label: const Text('Decrement'),
                onPressed: _counterBloc.decrement,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counterBloc.resetCounter,
        child: const Icon(Icons.restart_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
