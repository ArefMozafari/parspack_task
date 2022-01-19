import 'package:flutter/material.dart';
import 'package:parspack_task/Core/shared_pref.dart';
import 'package:parspack_task/Views/Pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.initialize();
  print("object");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParsPack Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const MainPage()
      },
    );
  }
}
