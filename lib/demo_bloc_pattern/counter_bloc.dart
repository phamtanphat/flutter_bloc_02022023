import 'dart:async';

import 'package:flutter_bloc_02022023/demo_bloc_pattern/counter_event.dart';

class CounterBloc {
  int value = 0;
  StreamController<int> counterStreamController = StreamController();

  CounterBloc() {
    counterStreamController.sink.add(0);
  }

  void addEvent(CounterEventBase event) {
    switch (event.runtimeType) {
      case InCreaseEvent:
        inCrease(event as InCreaseEvent);
        break;
      default: return;
    }
  }

  void inCrease(InCreaseEvent event) {
    value += event.value;
    counterStreamController.sink.add(value);
  }
}