abstract class CounterLibEventBase { }

class InCreaseLibEvent extends CounterLibEventBase {
  int value;

  InCreaseLibEvent({required this.value});
}