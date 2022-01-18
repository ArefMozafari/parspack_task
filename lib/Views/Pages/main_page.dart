import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parspack_task/Controller/number_controller.dart';
import 'package:parspack_task/Repository/number_repository.dart';
import 'package:parspack_task/Views/Pages/result_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentBottomIndex,
          onTap: (newSelectedIndex) =>
              setState(() => currentBottomIndex = newSelectedIndex),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Result')
          ],
        ),
        body: BlocProvider<NumberController>(
            create: (BuildContext context) =>
                NumberController(NumberRepository()),
            child: currentBottomIndex == 0
                ? const HomePage()
                : const ResultPage()));
  }
}
