
class NumberRepository {
  NumberRepository._();

  static final NumberRepository _instance = NumberRepository._();

  factory NumberRepository(int number) {
    _instance._number = number;
    return _instance;
  }
  late int _number;

  int get number => _number;

  int increment() => _number += 1;

  int decrement() => _number -= 1;
}
