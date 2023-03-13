import 'package:flutter/material.dart';

class Lesson3 extends StatelessWidget {
  const Lesson3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Урок 3', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Размер', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Размером называется нотное изображение метра посредством обозначения его доли определенной длительностью, а всей метрической группы долей — дробью. Числитель этой дроби указывает на количество долей размера, а знаменатель на длительность, которая принята за основную долю.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Такт', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Тактом называется отрезок музыкального произведения, который начинается с сильной доли и кончается следующей сильной долей. Следовательно, такт представляет собой объединение метра и ритма, которые порознь возможны лишь как отвлеченные понятия, а в музыке всегда существуют одновременно. Тактовая черта — вертикальная черта поперек нотоносца, отделяющие такты друг от друга.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Простые метры и размеры', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Простыми называются метры и размеры, имеющие две и три доли при одном акценте:', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          SizedBox(
              height: 280,
              child: Image.asset(
                "assets/images/prost.png",
                fit: BoxFit.contain,
              )
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Сложные метры и размеры. Сильные и относительно сильные доли сложными называются размеры, образующиеся от слияния в последовательности одинаковых простых размеров и потому имеющие больше чем один акцент. Количество акцентов равно количеству простых размеров, слитых в один сложный. Акцент первого их слитых простых размеров сильнее, чем акценты последующих простых размеров, вошедших в данный сложный. Поэтому первая доля сложного размера называется сильной, а первые доли последующих простых размеров, вошедших в его состав, — относительно сильными.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          SizedBox(
              height: 180,
              child: Image.asset(
                "assets/images/slozhn.png",
                fit: BoxFit.contain,
              )
          ),
        ],
      ),
    );
  }
}
