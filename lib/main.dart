import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:parspack_task/Core/beamer.dart';
import 'package:parspack_task/Views/Pages/main_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final BeamerDelegate route = BeamerDelegate(
      locationBuilder: BeamerLocationBuilder(beamLocations: [AppBeamer()]),
      notFoundRedirectNamed: '/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ParsPack Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: route,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: route),
    );
  }
}
