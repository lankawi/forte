import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onChangeAnswer;

  const Answer({Key? key,
    required this.title,
    this.isCorrect,
    required this.onChangeAnswer
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown, width: 1),
          borderRadius: BorderRadius.circular(15),
          color: Colors.amber,
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
