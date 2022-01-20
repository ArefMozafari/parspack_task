import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parspack_task/Repository/number_repository.dart';

abstract class NumberControllerStates {
  final int number;

  NumberControllerStates(this.number);
}

class NumberControllerStateInitial extends NumberControllerStates {
  NumberControllerStateInitial(int number) : super(number);
}

class NumberControllerStateNumber extends NumberControllerStates {
  NumberControllerStateNumber(int newNumber) : super(newNumber);
}

class NumberController extends Cubit<NumberControllerStates> {
  NumberController(this._numberRepository)
      : super(NumberControllerStateInitial(_numberRepository.number));
  final NumberRepository _numberRepository;

  void increment() {
    _numberRepository.increment();
    emit(NumberControllerStateNumber(_numberRepository.number));
  }

  void decrement() {
    _numberRepository.decrement();
    emit(NumberControllerStateNumber(_numberRepository.number));
  }
}
