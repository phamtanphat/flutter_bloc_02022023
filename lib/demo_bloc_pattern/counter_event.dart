abstract class CounterEventBase { }

class InCreaseEvent extends CounterEventBase {
  int value;

  InCreaseEvent({required this.value});
}