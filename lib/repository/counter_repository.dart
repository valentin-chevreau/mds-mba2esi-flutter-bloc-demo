class CounterRepository {

  int value;

  static final CounterRepository _counterRepository = CounterRepository._internal();

  factory CounterRepository() {
    return _counterRepository;
  }

  CounterRepository._internal();
}