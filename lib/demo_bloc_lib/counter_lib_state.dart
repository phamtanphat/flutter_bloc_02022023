abstract class CounterLibStateBase {
  int? value;
}

class CounterInitState extends CounterLibStateBase {
  CounterInitState({required int valueInit}) {
    value = valueInit;
  }
}

class CounterIncreaseSuccess extends CounterLibStateBase {

  CounterIncreaseSuccess(int result) {
    value = result;
  }
}
