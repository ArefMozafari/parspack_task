import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parspack_task/Controller/number_controller.dart';
import 'package:parspack_task/Repository/number_repository.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            BlocBuilder<NumberController, int>(
              builder: (context, state) => Text(
                  NumberRepository().number.toString(),
                  style: const TextStyle(fontSize: 50)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
