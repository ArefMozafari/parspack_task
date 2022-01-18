import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parspack_task/Repository/number_repository.dart';


class NumberController extends Cubit<int> {
  NumberController(this._numberRepository) : super(0);

  final NumberRepository _numberRepository;

  void increment() {
    _numberRepository.increment();
    emit(_numberRepository.number);
  }

  void decrement() {
    _numberRepository.decrement();
    emit(_numberRepository.number);
  }

}
