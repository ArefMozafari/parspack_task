<p align="center">
  <img src="assets/icons/flutter.svg" width="36" alt="Flutter">
  &nbsp;&nbsp;&nbsp;
  <img src="assets/icons/dart.svg" width="36" alt="Dart">
</p>

<h1 align="center">parspack_task</h1>

<p align="center"><b>A Flutter task project: a counter with BLoC state and Beamer routing</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/flutter-app-02569B?logo=flutter&logoColor=white" alt="flutter app">
  <img src="https://img.shields.io/badge/state-flutter__bloc%20%28Cubit%29-0175C2" alt="state flutter__bloc (Cubit)">
  <img src="https://img.shields.io/badge/routing-Beamer-6E40C9" alt="routing Beamer">
</p>

## What's inside

- **State:** `flutter_bloc` Cubit (`NumberController`) over a singleton `NumberRepository`, with increment and decrement.
- **Routing:** [Beamer](https://pub.dev/packages/beamer), with clean web URLs through `url_strategy`.
- **Pages:** main, home and result pages, plus a shared icon button widget.
- **Platforms:** Android, iOS and web.

## Run

```bash
flutter pub get
flutter run            # or: flutter run -d chrome
```
