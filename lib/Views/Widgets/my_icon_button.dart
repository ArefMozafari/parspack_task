import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const MyTextButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
