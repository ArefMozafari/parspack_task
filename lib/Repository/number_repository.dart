import 'package:parspack_task/Core/shared_pref.dart';
import 'package:universal_html/html.dart' as html;

class NumberRepository {
  NumberRepository._() {
    html.window.onBeforeUnload.listen((event) async {
      await SharedPrefs.instance.setInt("Number", _number);
    });
    _number = SharedPrefs.instance.getInt("Number") ?? 0;
  }

  static final NumberRepository _instance = NumberRepository._();

  factory NumberRepository() => _instance;
  late int _number;

  int get number => _number;

  int increment() => _number += 1;

  int decrement() => _number -= 1;
}
