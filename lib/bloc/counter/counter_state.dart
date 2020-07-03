class CounterState {}

class UninitalizedCounterState extends CounterState {}

class HasValueCounterState extends CounterState {
  final int value;

  HasValueCounterState(this.value);
}
