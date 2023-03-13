import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Урок 1', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Звукоряд', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Музыкальная система — совокупность употребительных в музыке звуков определенной высоты.\n   Звукоряд — звуки музыкальной системы, расположенные в восходящем либо нисходящем порядке.\n   Равномерно темперированный строй — строй, в котором каждая октава делится на 12 полутонов (математически равные интервалы). Данный строй господствует в европейской профессиональной музыке, начиная с 18 века и до наших дней.\n   Тон состоит из двух полутонов.', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Text('Знаки альтерации', style: TextStyle(fontSize: 30))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text('   Каждая основная ступень звукоряда может быть как повышена, так и понижена. Таким образом, любая ступень может быть представлена в разных видах, из которых каждый является, в сущности, самостоятельным звуком.\n   Знаками альтерации называются знаки, указывающие на повышение либо понижение основной ступени, которой соответствует эта нота. Их пять:', style: TextStyle(fontSize: 25), textAlign: TextAlign.justify),
          ),
          SizedBox(
              height: 100,
              child: Image.asset(
                "assets/images/alter.png",
                fit: BoxFit.contain,
              )
          ),
        ],
      ),
    );
  }
}
