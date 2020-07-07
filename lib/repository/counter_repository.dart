class CounterRepository {
  int value = 0;

  static final CounterRepository _counterRepository =
      CounterRepository._internal();
  factory CounterRepository() {
    return _counterRepository;
  }

  CounterRepository._internal();

//Singleton "Java Style
//  static CounterRepository _singleton;
//
//  int value;
//
//  CounterRepository getSingleton() {
//    if (_singleton == null) {
//      _singleton = CounterRepository();
//    }
//    return _singleton;
//  }
}
