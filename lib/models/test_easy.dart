import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title: 'Значок, обозначающий повторение какой-либо части произведения. Как он называется?',
        answers: [
          {'answer' : 'Реприза', 'isCorrect': 1},      //, isCorrect:1
          {'answer' : 'Партитура'},
          {'answer' : 'Диез'},
          {'answer' : 'Бемоль'},
        ]
    ),
    Question(
        title: 'Что такое «басовый ключ»?',
        answers: [
          {'answer' : 'Значок, подтверждающий нахождение ноты "фа" малой октавы на четвертой линии нотного стана', 'isCorrect': 1},
          {'answer' : 'Значок, подтверждающий нахождение ноты "соль" первой октавы на второй линии нотного стана'},
          {'answer' : 'Повторение фрагмента с некоторыми изменениями'},
          {'answer' : 'Значок, обозначающий повышение звука на один полутон'},
        ]
    ),
    Question(
        title: 'Звукоряд из восьми нот, где первая и последняя совпадают по названию, но находятся на расстоянии октавы — это...',
        answers: [
          {'answer' : 'Гамма', 'isCorrect': 1},
          {'answer' : 'Тональность'},
          {'answer' : 'Арпеджио'},
          {'answer' : 'Интервал'},
        ]
    ),
    Question(
        title: 'Энгармонически равные звуки:',
        answers: [
          {'answer' : 'Ми#=Фа', 'isCorrect': 1},
          {'answer' : 'Фа#=Соль'},
          {'answer' : 'Соль#=Фа'},
          {'answer' : 'Ми#=Ре'},
        ]
    ),
    Question(
        title: 'Бемоль:',
        answers: [
          {'answer' : 'Понижает звук на полтона', 'isCorrect': 1},
          {'answer' : 'Повышает звук на тон'},
          {'answer' : 'Повышает звук на полтона'},
          {'answer' : 'Понижает звук на два полтона'},
        ]
    ),
    Question(
        title: 'Верное буквенное обозначение звука:',
        answers: [
          {'answer' : 'До – C', 'isCorrect': 1},
          {'answer' : 'До – D'},
          {'answer' : 'Ре – R'},
          {'answer' : 'Соль – C'},
        ]
    ),
    Question(
        title: 'Где указана правильная длительность?',
        answers: [
          {'answer' : 'В целой ноте 4 четвертные ноты', 'isCorrect': 1},
          {'answer' : 'В целой ноте 2 четвертные ноты'},
          {'answer' : 'В целой ноте 4 восьмые ноты'},
          {'answer' : 'В целой ноте 2 восьмые ноты'},
        ]
    ),
    Question(
        title: 'Буквенное обозначение мажора:',
        answers: [
          {'answer' : 'dur', 'isCorrect': 1},
          {'answer' : 'dis'},
          {'answer' : 'des'},
          {'answer' : 'moll'},
        ]
    ),
    Question(
        title: 'Пять параллельных линеек, на которых записываются ноты, называются...',
        answers: [
          {'answer' : 'нотоносцем', 'isCorrect': 1},
          {'answer' : 'строкой'},
          {'answer' : 'партитурой'},
          {'answer' : 'начальной чертой'},
        ]
    ),
    Question(
        title: 'Что означает термин «форте» (f - forte)?',
        answers: [
          {'answer' : 'громко', 'isCorrect': 1},
          {'answer' : 'очень громко'},
          {'answer' : 'тихо'},
          {'answer' : 'умеренно тихо'},
        ]
    ),
  ];

  List<Question> get questions => [..._data];
}