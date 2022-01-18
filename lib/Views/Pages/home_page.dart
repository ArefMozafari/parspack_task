import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parspack_task/Controller/number_controller.dart';
import 'package:parspack_task/Repository/number_repository.dart';
import 'package:parspack_task/Views/Widgets/my_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        children: [
          const Spacer(),
          BlocBuilder<NumberController, int>(
              builder: (BuildContext context, state) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextButton(
                    text: "Add",
                    onPressed: () => context.read<NumberController>().increment(),
                  ),
                  Text(NumberRepository().number.toString(),
                      style: const TextStyle(fontSize: 50)),
                  MyTextButton(
                    text: "Subtract",
                    onPressed: () => context.read<NumberController>().decrement(),
                  ),
                ],
              ),
            );
          }),
          const Spacer(),
        ],
      ),
    );
  }
}
