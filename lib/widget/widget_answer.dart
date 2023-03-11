import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 5.0,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black54,
          blurRadius: 8.0,
          offset: Offset(1.0, 1.0),
        )],
        color: Colors.amber,
      ),
      child: const Text(
        'Ответ',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
