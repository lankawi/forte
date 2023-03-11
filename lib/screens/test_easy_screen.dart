import 'package:flutter/material.dart';
import 'package:forte_v2/models/test_easy.dart';
import 'package:forte_v2/myapp_icons.dart';
import 'package:forte_v2/services/nav_bar.dart';
import 'package:forte_v2/widget/progress_bar.dart';
import 'package:forte_v2/widget/quiz.dart';

import '../widget/widget_answer.dart';

class TestsEasyScreen extends StatefulWidget {
  @override
  _TestsEasyScreenState createState() => _TestsEasyScreenState();
}

class _TestsEasyScreenState extends State<TestsEasyScreen> {

  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {       //обнуление
    _questionIndex = 0;
    _countResult = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if (isCorrect) {
      _icons.add(Icon(Icons.brightness_1, color: Colors.lightGreen));
      _countResult++;
    } else {
      _icons.add(Icon(Icons.brightness_1, color: Colors.redAccent));
    }

    _questionIndex += 1;
  });

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),                     //выплывающая менюшка
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Легкий тест'),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Colors.yellow[200]
        ),
        child: Column(
          children: <Widget>[

            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),

            Quiz(
              index: _questionIndex,
              questionData: data,
              onChangeAnswer: _onChangeAnswer,
            ),
          ],
        ),
      )
    );
  }
}