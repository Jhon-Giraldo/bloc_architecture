import 'dart:async';

import '../models/counter.dart';

class CounterBloc {
  final _counter = Counter();
  final _counterController = StreamController<int>();

  Stream<int> get counter => _counterController.stream;
  int get count => _counter.count;

  void increment() {
    _counter.increment();
    _counterController.sink.add(_counter.count);
  }

  void decrement() {
    _counter.decrement();
    _counterController.sink.add(_counter.count);
  }

  void resetCounter() {
    _counter.resetCounter();
    _counterController.sink.add(_counter.count);
  }

  void dispose() {
    _counterController.close();
  }
}
