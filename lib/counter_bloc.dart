import 'dart:async';

class CounterBloc {
  int _counter = 0;
  final _counterController = StreamController<int>();
  Stream<int> get counterStream => _counterController.stream;
  void incrementCounter() {
    _counter++;
    _counterController.sink.add(_counter);
  }

  void decrementCounter() {
    _counter--;
    _counterController.sink.add(_counter);
  }

  void dispose() {
    _counterController.close();
  }
}