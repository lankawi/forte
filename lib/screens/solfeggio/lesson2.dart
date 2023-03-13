import 'package:flutter/material.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Урок 2', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Ритм и метр', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Ритм — организованная последовательность звуков одинаковой или различной длительности. Для обозначения длительностей существует ряд особых нотных знаков:\n   1. Овал.\n   2. Штиль.\n   3. Хвосты.\n   Каждая более крупная длительность относится к ближайшей (по порядку) более мелкой, как 2:1. Это отражается в основных знаках нотного письма следующим образом: условно принятая за единицу целая нота делится на две половинные, половинная — на две четверти, четверть — на две восьмые и так далее.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Длительности', style: TextStyle(fontSize: 30))),
          ),
          SizedBox(
              height: 300,
              child: Image.asset(
                "assets/images/dlit.png",
                fit: BoxFit.contain,
              )
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Паузы', style: TextStyle(fontSize: 30))),
          ),
          SizedBox(
              height: 180,
              child: Image.asset(
                "assets/images/pause.png",
                fit: BoxFit.contain,
              )
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Пауза — перерыв в звучании, то есть время молчания. Паузы измеряются так же, как и длительности.\n   Паузы, общие для всех голосов, записанных на нотном стане, ставятся на его третьей линии или около нее.\n   Если паузирует часть голосов, то паузы пишут ближе к крайним линиям нотного стана, а если на нем нет свободного места, то и за его пределами, в последнем случае для целых и половинных пауз требуется добавочная линия.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}
