import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:parspack_task/Views/Pages/main_page.dart';

class AppBeamer extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/:number'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final List<BeamPage> pages = [];

    final String? parameterNumber = state.pathParameters['number'];

    if (parameterNumber != null) {
      final int number = int.tryParse(parameterNumber) ?? 0;
      pages.add(BeamPage(
          key: ValueKey('/$number'),
          title: 'Main Page',
          child: MainPage(initialNumber: number)));
    } else {
      pages.add(const BeamPage(
          key: ValueKey('/'),
          title: 'Main Page',
          child: MainPage(initialNumber: 0)));
    }

    return pages;
  }
}
